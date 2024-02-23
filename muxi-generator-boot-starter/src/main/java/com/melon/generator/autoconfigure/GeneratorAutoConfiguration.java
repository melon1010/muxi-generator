package com.melon.generator.autoconfigure;

import lombok.AllArgsConstructor;
import com.melon.generator.config.template.GeneratorConfig;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * spring boot starter AutoConfiguration
 *
 * @author melon
 * 
 */
@Configuration
@AllArgsConstructor
@ComponentScan(basePackages = {"net.maku.generator"})
@EnableConfigurationProperties(GeneratorProperties.class)
public class GeneratorAutoConfiguration {
    private final GeneratorProperties properties;

    @Bean
    GeneratorConfig generatorConfig() {
        return new GeneratorConfig(properties.getTemplate());
    }

}
