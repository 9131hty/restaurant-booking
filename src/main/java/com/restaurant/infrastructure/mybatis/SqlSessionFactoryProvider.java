package com.restaurant.infrastructure.mybatis;

import org.apache.ibatis.mapping.Environment;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.transaction.TransactionFactory;
import org.apache.ibatis.transaction.jdbc.JdbcTransactionFactory;

import javax.sql.DataSource;

public final class SqlSessionFactoryProvider {

    private static SqlSessionFactory sqlSessionFactory;

    private SqlSessionFactoryProvider() {}

    public static void init(DataSource dataSource) {
        try {
            TransactionFactory transactionFactory =
                    new JdbcTransactionFactory();

            Environment environment =
                    new Environment("dev", transactionFactory, dataSource);

            Configuration configuration =
                    new Configuration(environment);

            configuration.addMapper(
                    com.restaurant.item.infrastructure.persistence.ItemMapper.class
            );

            sqlSessionFactory =
                    new SqlSessionFactoryBuilder().build(configuration);

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
