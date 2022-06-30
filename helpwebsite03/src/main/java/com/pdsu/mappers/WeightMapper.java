package com.pdsu.mappers;

import com.pdsu.bean.Weights;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface WeightMapper {
    /**
     * 向数据库中插入一项权重- 亲属贫困指数
     * @param weights
     * @return
     */
    int insertRelative(@Param("weights") Weights weights);

    /**
     * 向数据库插入材料贫困指数
     * @param weights
     * @return
     */
    int insertMaterial(@Param("weights") Weights weights);

    /**
     * 向数据库中插入异议贫困指数
     * @param weights
     * @return
     */
    int insertOpinion(@Param("weights") Weights weights);


    /**
     * 向数据库中插入最终计算学生贫困指数的四项权重
     * @param relativeIndex
     * @param materialIndex
     * @param consumptionIndex
     * @param opinionIndex
     * @return
     */
    int insertMost(@Param("relativeIndex") int relativeIndex,@Param("materialIndex") int materialIndex,@Param("consumptionIndex") int consumptionIndex,@Param("opinionIndex") int opinionIndex);

    /**
     * 查询所有权限权重
     * @return
     */
    List<Weights> selectAll();
}
