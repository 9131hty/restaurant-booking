package com.restaurant.infrastructure.mybatis.typehandler;

import com.restaurant.common.enumeration.CodeEnum;
import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import java.sql.*;
import java.util.HashMap;
import java.util.Map;

public class EnumTypeHandler<E extends Enum<E>>
        extends BaseTypeHandler<E> {

    private final Class<E> type;
    private final Map<String, E> lookup = new HashMap<>();

    public EnumTypeHandler(Class<E> type) {
        if (type == null || !type.isEnum()) {
            throw new IllegalArgumentException(
                    "EnumTypeHandler requires an enum type"
            );
        }

        this.type = type;

        for (E e : type.getEnumConstants()) {
            if (e instanceof CodeEnum) {
                lookup.put(((CodeEnum) e).getCode(), e);
            }
            lookup.put(e.name(), e);
        }
    }

    @Override
    public void setNonNullParameter(
            PreparedStatement ps,
            int i,
            E parameter,
            JdbcType jdbcType
    ) throws SQLException {

        if (parameter instanceof CodeEnum) {
            ps.setString(i, ((CodeEnum) parameter).getCode());
        } else {
            ps.setString(i, parameter.name());
        }
    }

    @Override
    public E getNullableResult(ResultSet rs, String columnName)
            throws SQLException {
        return resolve(rs.getString(columnName));
    }

    @Override
    public E getNullableResult(ResultSet rs, int columnIndex)
            throws SQLException {
        return resolve(rs.getString(columnIndex));
    }

    @Override
    public E getNullableResult(
            CallableStatement cs,
            int columnIndex
    ) throws SQLException {
        return resolve(cs.getString(columnIndex));
    }

    private E resolve(String value) {
        if (value == null) {
            return null;
        }

        E result = lookup.get(value);
        if (result == null) {
            throw new IllegalArgumentException(
                    "Unknown value '" + value +
                            "' for enum " + type.getName()
            );
        }
        return result;
    }
}
