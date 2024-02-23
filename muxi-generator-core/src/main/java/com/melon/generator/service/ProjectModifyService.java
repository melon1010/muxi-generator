package com.melon.generator.service;

import com.melon.generator.common.page.PageResult;
import com.melon.generator.common.query.Query;
import com.melon.generator.common.service.BaseService;
import com.melon.generator.entity.ProjectModifyEntity;

import java.io.IOException;

/**
 * 项目名变更
 *
 * @author melon
 * 
 */
public interface ProjectModifyService extends BaseService<ProjectModifyEntity> {

    PageResult<ProjectModifyEntity> page(Query query);

    byte[] download(ProjectModifyEntity project) throws IOException;

}