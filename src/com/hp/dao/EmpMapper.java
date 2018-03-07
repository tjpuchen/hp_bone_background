package com.hp.dao;

import java.util.HashMap;
import java.util.List;

import com.hp.entity.Dept;
import com.hp.entity.Emp;
//该接口是用来映射SQL语句的，每一个接口方法对应于一条SQL语句
public interface EmpMapper {
	public List<Emp>selectEmp();
	
	public List<Emp>selectEmpByDeptno(int deptno);
	
	public List<Emp>selectEmpByJobAndDeptno(HashMap<String, Object> param);
	
	public int insertEmp(Emp emp);
	public boolean insertEmpBatch(List<Emp>emps);
	
	public int deleteEmpByEmpno(int empno);
	
	public int updateEmpByEmpno(Emp emp);
	
	public List<Emp>selectEmpAndDept();
	
	public List<Dept>selectDeptAndEmp();
	
	public List<Emp>selectEmpByJob(String job);
	
	public List<Emp>selectEmpByJobAndSal(HashMap<String, Object>param);
	
	public List<Emp>select1();
	public List<Emp>select2();
	public List<Emp>select3();
	public List<Emp>select4();
	public List<Emp>select5();
	public List<Emp>select6();
	public List<Emp>select7();
	public List<String> select8();
	public List<Emp>select9();
	public List<Emp>select10();
	public List<Emp>select11();
	public List<String> select12();
	public List<String> select13();
	public List<String> select14();
	public List<String> select15();
	public List<String> select16();
	public HashMap<String,Object> select17();
	public List<Emp>select18();
	public HashMap<String,Object> select19();
	public HashMap<String,Object> select20();
	public HashMap<String,Object> select21();
	public HashMap<String,Object> select22();
	public List<Emp>select23();
	public HashMap<String,Object> select24();
	public List<String> select25();
	public HashMap<String,Object> select26();
	public List<String> select27();
	public List<Emp>select28();
	public HashMap<String,Object> select29();
	
	
	
	
	
	
}
