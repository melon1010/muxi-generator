package com.melon.generator.config.template;

import lombok.Data;

import java.util.List;

/**
 * 代码生成信息
 *
 * @author melon
 * 
 */
@Data
public class GeneratorInfo {
    private ProjectInfo project;
    private DeveloperInfo developer;
    private List<TemplateInfo> templates;
}
