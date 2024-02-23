package com.melon.generator.dao;

import com.baomidou.mybatisplus.annotation.InterceptorIgnore;
import com.melon.generator.common.dao.BaseDao;
import com.melon.generator.entity.ProjectModifyEntity;
import org.apache.ibatis.annotations.Mapper;

/**
 * 项目名变更
 *
 * @author melon
 * 
 */
@Mapper
@InterceptorIgnore(tenantLine = "true")
public interface ProjectModifyDao extends BaseDao<ProjectModifyEntity> {

}