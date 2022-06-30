package com.pdsu.service;

import com.pdsu.bean.Weights;
import com.pdsu.utils.PageHelp;

public interface WeightService {
    /**
     * 插入权重
     * @param weights
     * @return
     */
    int insertIndex(int identity,Weights weights);

    /**
     * 插入学生贫困指数权重
     * @param relativeIndex
     * @param materialIndex
     * @param consumptionIndex
     * @param opinionIndex
     * @return
     */
    int insertMost(int relativeIndex,int materialIndex, int consumptionIndex, int opinionIndex);

    /**
     * 查询所有权重
     * @return
     */
    PageHelp<Weights> selectAll(Integer currentPage, Integer pageSize);
}
