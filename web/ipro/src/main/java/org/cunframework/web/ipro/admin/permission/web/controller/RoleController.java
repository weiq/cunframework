package org.cunframework.web.ipro.admin.permission.web.controller;

import com.google.common.collect.Sets;

import org.cunframework.modules.common.Constants;
import org.cunframework.modules.common.entity.enums.AvailableEnum;
import org.cunframework.modules.common.entity.search.Searchable;
import org.cunframework.modules.common.web.controller.BaseCRUDController;
import org.cunframework.web.ipro.admin.permission.entity.Role;
import org.cunframework.web.ipro.admin.permission.entity.RoleResourcePermission;
import org.cunframework.web.ipro.admin.permission.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import java.util.Set;

/**
 */
@Controller
@RequestMapping(value = "/admin/sys/permission/role")
public class RoleController extends BaseCRUDController<Role, Long> {

    @Autowired
    private PermissionService permissionService;

    public RoleController() {
        setResourceIdentity("sys:role");
    }

    @Override
    protected void setCommonData(Model model) {
        super.setCommonData(model);
        model.addAttribute("availableList", AvailableEnum.values());

        Searchable searchable = Searchable.newSearchable();
//        searchable.addSearchFilter("show", SearchOperator.eq, true);
        model.addAttribute("permissions", permissionService.findAllWithNoPageNoSort(searchable));
    }


    @RequestMapping(value = "create/discard", method = RequestMethod.POST)
    @Override
    public String create(
            Model model, @Valid @ModelAttribute("m") Role m, BindingResult result,
            RedirectAttributes redirectAttributes) {
        throw new RuntimeException("discarded method");
    }

    @RequestMapping(value = "{id}/update/discard", method = RequestMethod.POST)
    @Override
    public String update(
            Model model, @Valid @ModelAttribute("m") Role m, BindingResult result,
            @RequestParam(value = Constants.BACK_URL, required = false) String backURL,
            RedirectAttributes redirectAttributes) {

        throw new RuntimeException("discarded method");
    }


    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String createWithResourcePermission(
            Model model,
            @Valid @ModelAttribute("m") Role role, BindingResult result,
            @RequestParam("resourceId") Long[] resourceIds,
            @RequestParam("permissionIds") Long[][] permissionIds,
            RedirectAttributes redirectAttributes) {

        fillResourcePermission(role, resourceIds, permissionIds);

        return super.create(model, role, result, redirectAttributes);
    }

    @RequestMapping(value = "{id}/update", method = RequestMethod.POST)
    public String updateWithResourcePermission(
            Model model,
            @Valid @ModelAttribute("m") Role role, BindingResult result,
            @RequestParam("resourceId") Long[] resourceIds,
            @RequestParam("permissionIds") Long[][] permissionIds,
            @RequestParam(value = Constants.BACK_URL, required = false) String backURL,
            RedirectAttributes redirectAttributes) {

        fillResourcePermission(role, resourceIds, permissionIds);

        return super.update(model, role, result, backURL, redirectAttributes);
    }

    private void fillResourcePermission(Role role, Long[] resourceIds, Long[][] permissionIds) {
        int resourceLength = resourceIds.length;
        if (resourceIds.length == 0) {
            return;
        }

        if (resourceLength == 1) { //如果长度为1  那么permissionIds就变成如[[0],[1],[2]]这种
            Set<Long> permissionIdSet = Sets.newHashSet();
            for (Long[] permissionId : permissionIds) {
                permissionIdSet.add(permissionId[0]);
            }
            role.addResourcePermission(
                    new RoleResourcePermission(resourceIds[0], permissionIdSet)
            );

        } else {
            for (int i = 0; i < resourceLength; i++) {
                role.addResourcePermission(
                        new RoleResourcePermission(resourceIds[i], Sets.newHashSet(permissionIds[i]))
                );
            }
        }

    }

    @RequestMapping(value = "/changeStatus/{newStatus}")
    public String changeStatus(
            HttpServletRequest request,
            @PathVariable("newStatus") Boolean newStatus,
            @RequestParam("ids") Long[] ids,
            RedirectAttributes redirectAttributes
    ) {

        this.permissionList.assertHasUpdatePermission();

        for (Long id : ids) {
            Role role = baseService.findOne(id);
            role.setShow(newStatus);
            baseService.update(role);
        }

        redirectAttributes.addFlashAttribute(Constants.MESSAGE, "操作成功！");

        return "redirect:" + request.getAttribute(Constants.BACK_URL);
    }


    @RequestMapping("{role}/permissions")
    public String permissions(@PathVariable("role") Role role) {
        return viewName("permissionsTable");
    }

}
