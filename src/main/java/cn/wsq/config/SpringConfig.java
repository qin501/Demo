package cn.wsq.config;

import com.alibaba.druid.pool.DruidDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

import javax.sql.DataSource;

/**
 * spring配置文件
 */
@Configuration
@PropertySource(value = "classpath:jdbc.properties")
public class SpringConfig {
    @Value("${jdbc.url}")
    private String jdbcUrl;
    @Value("${jdbc.driverClassName}")
    private String jdbcDriverClassName;
    @Value("${jdbc.jdbcUserName}")
    private String jdbcUserName;
    @Value("${jdbc.jdbcPassword}")
    private String jdbcPassword;
    @Bean(destroyMethod = "close")
    public DataSource getDataSource(){
        DruidDataSource dataSource = new DruidDataSource();
        dataSource.setUrl(jdbcUrl);
        dataSource.setPassword(jdbcPassword);
        dataSource.setUsername(jdbcUserName);
        dataSource.setDriverClassName(jdbcDriverClassName);
        return dataSource;
    }
}
