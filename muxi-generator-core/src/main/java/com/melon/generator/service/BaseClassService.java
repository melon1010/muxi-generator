package com.melon.generator.service;

import com.melon.generator.common.page.PageResult;
import com.melon.generator.common.query.Query;
import com.melon.generator.common.service.BaseService;
import com.melon.generator.entity.BaseClassEntity;

import java.util.List;

/**
 * 基类管理
 *
 * @author melon
 * 
 */
public interface BaseClassService extends BaseService<BaseClassEntity> {

    PageResult<BaseClassEntity> page(Query query);

    List<BaseClassEntity> getList();
}