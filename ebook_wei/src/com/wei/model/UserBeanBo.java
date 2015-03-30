package com.wei.model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.wei.util.DButil;
import com.wei.util.DateTools;



//insert into ebook_users values('wangwei','wangwei','����','1','�㽭�����²�','vib_@163.com','13596419152','0','�׽�','2012-7-12')
//���  sequence GUEST_BOOK_SEQ.nextval 

public class UserBeanBo {

	DButil db=new DButil();
	
	/*
	 * �ж��û��������Ƿ���ȷ
	 * */
	public boolean cheakUser(String n,String p){
		boolean b=false;
		String sql="select * from ebook_users where user_id='"+n+"' and pwd='"+p+"'";
		
		if(db.getOneRow(sql)!=null){
			b=true;
		}
		
		return b;
	}
	
	/*
	 * �õ���¼�û�����ϸ��Ϣ
	 * */
	public UserBean getUser(String user_id){
		UserBean ub=new UserBean();
		String sql="select * from ebook_users where user_id='"+user_id+"'";
		
		List<Map<String, Object>> list=db.queryToList(sql);
		for(int i=0;i<list.size();i++){
			ub.setUser_id((String)list.get(i).get("USER_ID"));
			ub.setUser_name((String)list.get(i).get("USER_NAME"));
			ub.setPwd((String)list.get(i).get("PWD"));
			ub.setSex((String)list.get(i).get("SEX"));
			ub.setAddress((String)list.get(i).get("ADRESS"));
			ub.setEmail((String)list.get(i).get("EMAIL"));
			ub.setTel((String)list.get(i).get("TEL"));
			ub.setJifen(Integer.parseInt((String)list.get(i).get("JIFEN")));
			ub.setGrade((String)list.get(i).get("GRADE"));
			ub.setZc_date((String)list.get(i).get("ZC_DATE"));
		}
		
		System.out.println("userbeanbo--ȡ����Ӧ�û���"+ub.getAddress()+" "+ub.getEmail()+" "+ub.getGrade()+" "+ub.getJifen()+" "+ub.getPwd()+" "+
				ub.getSex()+" "+ub.getTel()+" "+ub.getUser_id()+" "+ub.getUser_name()+" "+ub.getZc_date());
		return ub;
		
	}
	
	/*
	 * ����û���Ϣ
	 * */
	public int addUser(UserBean user){
		String sql="insert into ebook_users values('"+user.getUser_id()+"','"+user.getPwd()+"','"+user.getUser_name()+"','"+user.getSex()+"','"+user.getAddress()+"','"+user.getEmail()+"','"+user.getTel()+"','"+user.getJifen()+"','"+user.getGrade()+"','"+DateTools.getDateTime()+"')";
		int i=db.update(sql);
		return i;
	}
	
	/*
	 * �޸��û���Ϣ
	 * */
	public int updateUser(UserBean user){
		String sql="update ebook_users set user_name='"+user.getUser_name()+"',sex='"+user.getSex()+"',adress='"+user.getAddress()+"',email='"+user.getEmail()+"',tel='"+user.getTel()+"' where user_id='"+user.getUser_id()+"'";
	
		int i=db.update(sql);
		return i;
	}
	/*
	 * �޸��û�����
	 * */
	public int alterPwd(String user_id,String newpwd){
		String sql="update ebook_users set pwd='"+newpwd+"' where user_id='"+user_id+"'";
		int i=db.update(sql);
		return i;
	}
	
	/*
	 * ���ӻ���
	 * */
	public int addJifen(String user_id,int jifen){
		String sql="update EBOOK_USERS set JIFEN=JIFEN+"+jifen+" where USER_ID='"+user_id+"'";
		int f=db.update(sql);
		return f;
	}
	
	
	
}
