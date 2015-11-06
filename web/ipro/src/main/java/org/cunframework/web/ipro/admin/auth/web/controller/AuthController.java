package org.cunframework.web.ipro.admin.auth.web.controller;

import org.cunframework.modules.common.Constants;
import org.cunframework.modules.common.entity.search.Searchable;
import org.cunframework.modules.common.web.bind.annotation.SearchableDefaults;
import org.cunframework.modules.common.web.controller.BaseCRUDController;
import org.cunframework.web.ipro.admin.auth.entity.Auth;
import org.cunframework.web.ipro.admin.auth.entity.AuthType;
import org.cunframework.web.ipro.admin.auth.service.AuthService;
import org.cunframework.web.ipro.admin.permission.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

/**
 */
@Controller
@RequestMapping(value = "/admin/sys/auth")
public class AuthController extends BaseCRUDController<Auth, Long> {

    @Autowired
    private RoleService roleService;

    public AuthController() {
        setListAlsoSetCommonData(true);
        setResourceIdentity("sys:auth");
    }

    private AuthService getAuthService() {
        return (AuthService) baseService;
    }

    @Override
    protected void setCommonData(Model model) {
        super.setCommonData(model);
        model.addAttribute("types", AuthType.values());

        Searchable searchable = Searchable.newSearchable();
//        searchable.addSearchFilter("show", SearchOperator.eq, true);
        model.addAttribute("roles", roleService.findAllWithNoPageNoSort(searchable));
    }


    @SearchableDefaults(value = "type_eq=user")
    @Override
    public String list(Searchable searchable, Model model) {

        String typeName = String.valueOf(searchable.getValue("type_eq"));
        model.addAttribute("type", AuthType.valueOf(typeName));

        return super.list(searchable, model);
    }

    @RequestMapping(value = "create/discarded", method = RequestMethod.GET)
    public String showCreateForm(Model model) {
        throw new RuntimeException("discard method");
    }


    @RequestMapping(value = "create/discarded", method = RequestMethod.POST)
    public String create(
            Model model, @Valid @ModelAttribute("m") Auth m, BindingResult result,
            RedirectAttributes redirectAttributes) {
        throw new RuntimeException("discard method");
    }

    @RequestMapping(value = "{type}/create", method = RequestMethod.GET)
    public String showCreateFormWithType(@PathVariable("type") AuthType type, Model model) {
        Auth auth = new Auth();
        auth.setType(type);
        model.addAttribute("m", auth);
        return super.showCreateForm(model);
    }


    @RequestMapping(value = "{type}/create", method = RequestMethod.POST)
    public String createWithType(
            Model model,
            @RequestParam(value = "userIds", required = false) Long[] userIds,
            @RequestParam(value = "groupIds", required = false) Long[] groupIds,
            @RequestParam(value = "organizationIds", required = false) Long[] organizationIds,
            @RequestParam(value = "jobIds", required = false) Long[][] jobIds,
            @Valid @ModelAttribute("m") Auth m, BindingResult result,
            RedirectAttributes redirectAttributes) {

        this.permissionList.assertHasCreatePermission();

        if (hasError(m, result)) {
            return showCreateForm(model);
        }

        if (m.getType() == AuthType.user) {
            getAuthService().addUserAuth(userIds, m);
        } else if (m.getType() == AuthType.user_group || m.getType() == AuthType.organization_group) {
            getAuthService().addGroupAuth(groupIds, m);
        } else if (m.getType() == AuthType.organization_job) {
            getAuthService().addOrganizationJobAuth(organizationIds, jobIds, m);
        }
        redirectAttributes.addFlashAttribute(Constants.MESSAGE, "新增成功");
        return redirectToUrl("/admin/sys/auth?search.type_eq=" + m.getType());
    }


}
