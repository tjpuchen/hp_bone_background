package com.hp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hp.dao.DeptMapper;
import com.hp.dao.EmpMapper;
import com.hp.entity.Dept;
import com.hp.entity.Emp;
import com.hp.service.EmpService;

@Service
public class EmpServiceImpl implements EmpService {
	@Autowired
	private EmpMapper empdao;
	@Autowired
	private DeptMapper deptdao;
	@Override
	public List<Emp>selectEmp(){
		return empdao.selectEmp();
	}

	@Override
	@Transactional
	public List<Dept>selectDept(){
		return deptdao.selectDept();
	}
}
