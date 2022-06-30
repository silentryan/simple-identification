package com.pdsu.service.impl;

import com.pdsu.bean.Admin;
import com.pdsu.bean.Weights;
import com.pdsu.mappers.WeightMapper;
import com.pdsu.service.WeightService;
import com.pdsu.utils.PageHelp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("weightService")
public class WeightServiceImpl implements WeightService {
   // 自动注入
    @Autowired
    WeightMapper weightMapper;


    /*------------------------------------------服务层接口方法实现---------------------------------------------------*/

    /**
     * 储存亲属、材料、异议贫困指数
     * @param identity
     * @param weights
     * @return
     */
    @Override
    public int insertIndex(int identity, Weights weights) {
        switch (identity){
            case 1:
                // 亲属贫困指数
                return weightMapper.insertRelative(weights);
            case 2:
                // 材料贫困指数
                return weightMapper.insertMaterial(weights);
            case 3:
                // 异议贫困指数
                return weightMapper.insertOpinion(weights);
        }
        return -1;
    }

    /**
     * 存储学生贫困指数
     * @param relativeIndex
     * @param materialIndex
     * @param consumptionIndex
     * @param opinionIndex
     * @return
     */
    @Override
    public int insertMost(int relativeIndex, int materialIndex, int consumptionIndex, int opinionIndex) {
        return weightMapper.insertMost(relativeIndex,materialIndex,consumptionIndex,opinionIndex);
    }

    /**
     * 查询当前权值权重
     * @param currentPage
     * @param pageSize
     * @return
     */
    @Override
    public PageHelp<Weights> selectAll(Integer currentPage, Integer pageSize) {
        List<Weights> weights = weightMapper.selectAll();
        PageHelp<Weights> pageInfo = new PageHelp<Weights>(weights.size(),currentPage,pageSize);

        //判断是否是最后一页,如果最后一页就显示最后一页的几条，不是最后一页就显示pageSize条
        if(currentPage == pageInfo.getTotalPage())
            pageInfo.setList(weights.subList((currentPage-1)*pageSize, weights.size()));
        else
            pageInfo.setList(weights.subList((currentPage-1)*pageSize, (currentPage-1)*pageSize+pageSize));
        return pageInfo;
    }
}
