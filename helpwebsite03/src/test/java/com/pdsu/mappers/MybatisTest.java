package com.pdsu.mappers;

import com.pdsu.bean.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import java.io.InputStream;

class MybatisTest {
    // 测试 - mybatis调试成功
    public static void main(String[] args) {
        SqlSession sqlSession = null;
        try(InputStream is = Resources.getResourceAsStream("mybatis-config.xml");) {
            // 初始化mybatis,创建sqlSessionFactory类的实例
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
            sqlSession = sqlSessionFactory.openSession();
            // 创建一个用户
            User user = new User(2,"测试2","5151515","管理员");
            // 插入数据
            sqlSession.insert("com.pdsu.mappers.UserMapper.save",user);
            // 提交事务
            sqlSession.commit();
        } catch (Exception e) {
            sqlSession.rollback();
            e.printStackTrace();
        }finally {
            try {
                // 关闭sqlSession
                if (sqlSession != null) sqlSession.close();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }
}
