package org.cunframework.modules.common.repository;

import org.cunframework.modules.common.entity.search.Searchable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

import java.io.Serializable;
import java.util.List;

/**
 * <p>抽象DAO层基类 提供一些简便方法<br/>
 * <p/>
 * 想要使用该接口需要在spring配置文件的jpa:repositories中添加
 * factory-class="org.cunframework.modules.common.repository.support.SimpleBaseRepositoryFactoryBean"
 * <p/>
 * <p>泛型 ： M 表示实体类型；ID表示主键类型
 */
@NoRepositoryBean
public interface BaseRepository<M, ID extends Serializable> extends JpaRepository<M, ID> {

    /**
     * 根据主键删除
     *
     * @param ids
     */
    public void delete(ID[] ids);

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.springframework.data.repository.CrudRepository#findAll()
	 */
    List<M> findAll();

    /*
     * (non-Javadoc)
     * @see org.springframework.data.repository.PagingAndSortingRepository#findAll(org.springframework.data.domain.Sort)
     */
    List<M> findAll(Sort sort);


    /**
     * Returns a {@link Page} of entities meeting the paging restriction provided in the {@code Pageable} object.
     *
     * @param pageable
     * @return a page of entities
     */
    Page<M> findAll(Pageable pageable);

    /**
     * 根据条件查询所有
     * 条件 + 分页 + 排序
     *
     * @param searchable
     * @return
     */
    public Page<M> findAll(Searchable searchable);


    /**
     * 根据条件统计所有记录数
     *
     * @param searchable
     * @return
     */
    public long count(Searchable searchable);

}
