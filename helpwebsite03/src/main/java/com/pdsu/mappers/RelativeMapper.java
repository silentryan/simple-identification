package com.pdsu.mappers;

import com.pdsu.bean.Relatives;
import org.apache.ibatis.annotations.Param;

public interface RelativeMapper {
    /**
     * 录入学生相关家属信息
     *
     * @param relative
     * @return
     */
    int insertRelInfo(@Param("relatives") Relatives relative);
}