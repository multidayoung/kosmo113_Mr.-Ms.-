package kr.co.animal;

import java.sql.Connection;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest()
public class MyBatisConnTest {

	//SqlSessionFactory Test
	@Autowired
	private SqlSessionFactory ss;
	
	@Test
	public void testConnection() {
		try(SqlSession sqlSession = ss.openSession(true)) {
			Connection conn = sqlSession.getConnection();
			System.out.println("Connection Test :"+conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
