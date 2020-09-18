package org.vector.service;

import java.util.List;

import org.vector.domain.Pinglun;

public interface PinglunService {

	int saveOne(Pinglun pinglun);

	List<Pinglun> getAllPinglun(int id);

	int addPointerId(int id);
	
	int deletePointerId(int id);
	
	Pinglun findPointerId(int id);
	
}
