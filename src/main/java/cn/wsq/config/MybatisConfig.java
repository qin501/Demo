package cn.wsq.config;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;

import javax.sql.DataSource;

/**
 * mybatis配置文件
 */
@Configuration
public class MybatisConfig {
    @Autowired
    private DataSource dataSource ;
    @Bean
    @ConditionalOnMissingBean
    public SqlSessionFactoryBean sqlSessionFactoryBean(){

        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
        //设置数据源
        sessionFactory.setDataSource(dataSource);
        //设置mybatis的主配置文件
        ResourcePatternResolver resolver=new PathMatchingResourcePatternResolver();

        Resource resource= resolver.getResource("classpath:mybatis/mybatis-config.xml");

        sessionFactory.setConfigLocation(resource);
        //设置别名包
        sessionFactory.setTypeAliasesPackage("cn.wsq.pojo");
        return sessionFactory;
    }
}
