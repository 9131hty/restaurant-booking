package com.restaurant.infrastructure.mybatis;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.mapping.Environment;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.transaction.jdbc.JdbcTransactionFactory;

import javax.sql.DataSource;
import java.io.InputStream;

public final class SqlSessionFactoryProvider {

    private static SqlSessionFactory sqlSessionFactory;

    private SqlSessionFactoryProvider() {}

    public static void init(DataSource dataSource) {
        try {
            InputStream inputStream =
                    Resources.getResourceAsStream("mybatis/mybatis-config.xml");

            SqlSessionFactory factory =
                    new SqlSessionFactoryBuilder().build(inputStream);

            Configuration configuration = factory.getConfiguration();

            configuration.setEnvironment(
                    new Environment(
                            "dev",
                            new JdbcTransactionFactory(),
                            dataSource
                    )
            );

            sqlSessionFactory = factory;

        } catch (Exception e) {
            throw new RuntimeException("Failed to init MyBatis", e);
        }
    }

    public static SqlSessionFactory get() {
        if (sqlSessionFactory == null) {
            throw new IllegalStateException("SqlSessionFactory not initialized");
        }
        return sqlSessionFactory;
    }
}
