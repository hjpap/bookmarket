package com.wei.model;

import java.util.Map;

import com.wei.util.DButil;

public class AdminBo {

	DButil db=new DButil();
	/*
	 * 验证后台用户
	 * */
	public boolean adminLogin(String admin_id,String pwd){
		boolean t=false;
		String sql="select count(*) from EBOOK_ADMIN where ADMIN_ID='"+admin_id+"' and PWD='"+pwd+"'";
		if(Integer.parseInt(db.getOneRow(sql).get("COUNT(*)").toString())==1){	
			t=true;
		}
		return t;	
	}
	/*
	 * 得到后台用户详细信息
	 * */
	public AdminBean getAdminById(String admin_id){
		String sql="select * from EBOOK_ADMIN where ADMIN_ID='"+admin_id+"'";
		Map<String,Object> a=db.getOneRow(sql);
		AdminBean ab=new AdminBean();
		ab.setAdmin_id((String)a.get("ADMIN_ID"));
		ab.setAdmin_name((String)a.get("ADMIN_NAME"));
		ab.setGrade((String)a.get("GRADE"));
		ab.setPwd((String)a.get("PWD"));
		ab.setTel((String)a.get("TEL"));
		return ab;
	}
	
	
}
