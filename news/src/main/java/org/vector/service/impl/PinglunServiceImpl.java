package org.vector.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vector.domain.Pinglun;
import org.vector.mapper.PinglunMapper;
import org.vector.service.PinglunService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

@Service
public class PinglunServiceImpl implements PinglunService {

	@Autowired
	private PinglunMapper pinglunMapper;

	@Override
	public int saveOne(Pinglun pinglun) {
		pinglun.setpTime(new Date());
		return pinglunMapper.insert(pinglun);
	}

	@Override
	public List<Pinglun> getAllPinglun(int id) {
		QueryWrapper<Pinglun> qw = new QueryWrapper<>();
		qw.eq("p_id", id);
		return pinglunMapper.selectList(qw);
	}

	@Override
	public Pinglun findPointerId(int id) {
		return pinglunMapper.selectById(id);
	}

	@Override
	public int addPointerId(int id) {
		Pinglun findPointerId = findPointerId(id);
		Pinglun pinglun = new Pinglun();
		pinglun.setpContext(findPointerId.getpContext());
		pinglun.setpId(findPointerId.getpId());
		pinglun.setPoId(findPointerId.getPoId());
		pinglun.setpPoint(findPointerId.getpPoint() + 1);
		pinglun.setpTime(findPointerId.getpTime());
		pinglun.setPsId(findPointerId.getPsId());
		return pinglunMapper.updateById(pinglun);
	}

	@Override
	public int deletePointerId(int id) {
		Pinglun findPointerId = findPointerId(id);
		Pinglun pinglun = new Pinglun();
		pinglun.setpContext(findPointerId.getpContext());
		pinglun.setpId(findPointerId.getpId());
		pinglun.setPoId(findPointerId.getPoId());
		pinglun.setpPoint(findPointerId.getpPoint() - 1);
		pinglun.setpTime(findPointerId.getpTime());
		pinglun.setPsId(findPointerId.getPsId());
		return pinglunMapper.updateById(pinglun);
	}

}
