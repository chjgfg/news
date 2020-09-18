package org.vector.mapper;

import org.springframework.stereotype.Repository;
import org.vector.domain.News;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

@Repository
public interface NewsMapper extends BaseMapper<News> {

}
