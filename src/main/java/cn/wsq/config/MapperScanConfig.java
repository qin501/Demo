package cn.wsq.config;

import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MapperScanConfig {
    @Bean
    public MapperScannerConfigurer MapperScannerConfigurer(){
        MapperScannerConfigurer mapper = new MapperScannerConfigurer();
        mapper.setBasePackage("cn.wsq.mapper");
        return mapper;
    }
}
