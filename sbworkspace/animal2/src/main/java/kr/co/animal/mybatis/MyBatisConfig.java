package kr.co.animal.mybatis;


import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
//Dao의 위치를 지정한다.
@MapperScan(basePackages = {"kr.co.animal.dao"})
public class MyBatisConfig {
	//SqlSessionFactory는 myBatis
	// SqlSessionFactoryBean 은 mybatis-spring
	//<bean id="dataSource">
	//<bean id="sFactory"> <property ref="dataSorce">
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
		SqlSessionFactoryBean ssF = new SqlSessionFactoryBean();
		//설정
		ssF.setDataSource(dataSource);
		// mybatis/mapper/*.xml을 읽어와서 스프링컨테이너에게 Resolver 제공한다.
		PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
		ssF.setMapperLocations(resolver.getResources("classpath:mybatis/mapper/*.xml"));
		//Alias를 지정 - 해당 VO,DTO 객체에 @Alias("aliasName")
		// <select id="getNoticeList" resultType="knvo">
		ssF.setTypeAliasesPackage("kr.co.animal.vo");
		return ssF.getObject();	
	}
	@Bean
	public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
		SqlSessionTemplate ss = 
                            new SqlSessionTemplate(sqlSessionFactory);
		return ss;
	}
}
