package com.restaurant.infrastructure.mybatis.typehandler;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class LocalDateTimeTypeHandler
        extends BaseTypeHandler<LocalDateTime> {

    private static final DateTimeFormatter FORMATTER =
            DateTimeFormatter.ISO_LOCAL_DATE_TIME;

    @Override
    public void setNonNullParameter(
            PreparedStatement ps,
            int i,
            LocalDateTime parameter,
            JdbcType jdbcType
    ) throws SQLException {
        ps.setString(i, parameter.format(FORMATTER));
    }

    @Override
    public LocalDateTime getNullableResult(
            ResultSet rs,
            String columnName
    ) throws SQLException {
        String value = rs.getString(columnName);
        return value == null ? null : LocalDateTime.parse(value, FORMATTER);
    }

    @Override
    public LocalDateTime getNullableResult(
            ResultSet rs,
            int columnIndex
    ) throws SQLException {
        String value = rs.getString(columnIndex);
        return value == null ? null : LocalDateTime.parse(value, FORMATTER);
    }

    @Override
    public LocalDateTime getNullableResult(
            CallableStatement cs,
            int columnIndex
    ) throws SQLException {
        String value = cs.getString(columnIndex);
        return value == null ? null : LocalDateTime.parse(value, FORMATTER);
    }
}
