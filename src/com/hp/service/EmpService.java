package com.hp.service;

import java.util.List;

import com.hp.entity.Dept;
import com.hp.entity.Emp;


public interface EmpService {
	public List<Emp>selectEmp();
	public List<Dept>selectDept();
}
