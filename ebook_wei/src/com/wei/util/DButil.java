package com.wei.util;


import java.sql.Connection;
import java.sql.ParameterMetaData;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;


/**
 * �û����ݿ���ʵ���
 *@����Administrator
 *@createTime 2011-12-5 ����11:55:18
 *@version 1.0
 */
public class DButil {

	private Connection conn;
	private Statement st;
	private PreparedStatement pps;
	private ResultSet rs;
	private DataSource ds;
	
	/**
	 * ��ȡ���ӵķ���
	 * @return Connection һ����Ч�����ݿ�����
	 */
	
	public Connection getConnection()	{
		try {
			ds = setupDataSource("jdbc.properties");
		    Connection con = ds.getConnection();
			return con;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static DataSource setupDataSource(String configFile) {
        BasicDataSource ds = new BasicDataSource();
        try {
            Properties prop = new Properties();
            prop.load(DButil.class.getResourceAsStream(configFile));
            ds.setDriverClassName(prop.getProperty("driverClassName"));
            ds.setUrl(prop.getProperty("url"));
            ds.setUsername(prop.getProperty("username"));
            ds.setPassword(prop.getProperty("password"));
           // ds.setMaxActive(maxActive);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

        return ds;
    }
	

	/**
	 * ����ִ�и��µķ���,������insert delete update������
	 * @param sql String ���͵�SQL���
	 * @return Integer ��ʾ��Ӱ�������
	 */
	public int update(String sql)
	{
		//������������жϸ��²����Ƿ�ɹ����������-1˵��û��Ӱ�쵽���²��������ݿ��¼�����������²���ʧ��
		int row=-1;
		try {
			//������ݿ����ӱ��ر��ˣ���Ҫ�ȵ�һ���µ�����
			if(conn==null||conn.isClosed()){
				 conn=getConnection();
			}
			//ʹ��Connection����conn��createStatement()����Statement�����ݿ�������st
			st=conn.createStatement();
			//ִ�и��²���������Ӱ��ļ�¼����row
			row=st.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			close();
		}
		return row;
	}
	
	/**
	 * ����PreparedStatement���޸ķ��� PreparedStatement:��ʾԤ����� SQL ���Ķ���
	 * @param sql  String ���͵�SQL��䣨insert delete update��
	 * @param obj ��Ŷ�̬����������
	 * @return Integer ��ʾ��Ӱ�������
	 */
	public int update(String sql,Object ...obj)
	{
		try {
			//��ȡ����
			if(conn==null||conn.isClosed()){
				 conn=getConnection();
			}
			//����Ԥ����� SQL ������
			pps=conn.prepareStatement(sql);
			//�������length�������鳤�ȣ�Ҳ����Ԥ�����sql����еĲ������� 
			int length=0;
			//ParameterMetaData�����ڻ�ȡ���� PreparedStatement ������ÿ�����������ͺ�������Ϣ�Ķ���
			ParameterMetaData pmd=pps.getParameterMetaData();
			length=pmd.getParameterCount();
			//ѭ����sql����е�?����Ϊobj�����ж�Ӧ��ֵ��ע���1��ʼ������iҪ��1
			for(int i=0;i<length;i++)
			{
				pps.setObject(i+1, obj[i]);
			}
			//ִ�и��²���
			return pps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close();
		}
		
		return -1;
	}
	/**
	 * ��ȡһ����¼�ķ�����Ҫ�����������queryToList������ע�ⷺ�͵�ʹ��
	 * @param sql
	 * @return��Map<String,Object>
	 */
	public Map<String,Object> getOneRow(String sql)
	{
		//ִ�������queryToList����
		List<Map<String,Object>> list=queryToList(sql);
		//��Ŀ���㣬��ѯ���list��Ϊ�շ���list�е�һ������,���򷵻�null
		return list.size()>0?list.get(0):null;
	}
	
	/**
	 * ���ز�ѯ����б����磺[{TEST_NAME=aaa, TEST_NO=2, TEST_PWD=aaa}, {TEST_NAME=bbb, TEST_NO=3, TEST_PWD=bbb}...]
	 * @param sql
	 * @return List<Map<String,Object>>
	 */
	public List<Map<String,Object>> queryToList(String sql)
	{
		//���������б����Ա������в�ѯ���ļ�¼
		List<Map<String, Object>> list=new LinkedList<Map<String, Object>>();
		try {
			if(conn==null||conn.isClosed()){
				 conn=getConnection();
			}
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			//ResultSetMetaData �ǽ����Ԫ���ݣ��ɻ�ȡ���� ResultSet �������е����ͺ�������Ϣ�Ķ��� ���磺������й����������У�ÿ�е����ƺ����͵���Ϣ
			ResultSetMetaData rsmd=rs.getMetaData();
			//��ȡ������е�����
			int columncount=rsmd.getColumnCount();
			//while������������������д�������
			while(rs.next())
			{
				//����һ��HashMap���ڴ洢һ������
				HashMap<String, Object> onerow=new HashMap<String, Object>();
				//ѭ����ȡ������е���������������Ӧ��ֵ��ÿ��ѭ�����õ�һ���������磺{TEST_NAME=aaa, TEST_NO=2, TEST_PWD=aaa}
				for(int i=0;i<columncount;i++)
				{
					//��ȡָ���е����ƣ�ע��orcle�������Ĵ�Сд
					String columnName=rsmd.getColumnName(i+1);
					onerow.put(columnName, rs.getObject(i+1));
				}
				//����ȡ���Ķ���onewrow={TEST_NAME=aaa, TEST_NO=2, TEST_PWD=aaa}�ŵ������б���
				list.add(onerow);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			close();
		}
		return list;
	}
	/**
	 * ���ز�ѯ����б�,ʹ�õ���Ԥ����SQL ������PreparedStatement
	 * ���磺[{TEST_NAME=aaa, TEST_NO=2, TEST_PWD=aaa}, {TEST_NAME=bbb, TEST_NO=3, TEST_PWD=bbb}]
	 * @param sql
	 * @param paramValues
	 * @return List<Map<String,Object>>
	 */
	public List<Map<String,Object>> queryWithParam(String sql,Object ...paramValues){
		//���������б����Ա������в�ѯ���ļ�¼
		List<Map<String, Object>> list=new LinkedList<Map<String, Object>>();
		try {
			if(conn==null||conn.isClosed()){
				 conn=getConnection();
			}
			pps = conn.prepareStatement(sql);
			for (int i = 0; i < paramValues.length; i++) {
				pps.setObject(i + 1, paramValues[i]);
			}
			rs = pps.executeQuery();
			//ResultSetMetaData �ǽ����Ԫ���ݣ��ɻ�ȡ���� ResultSet �������е����ͺ�������Ϣ�Ķ��� ���磺������й����������У�ÿ�е����ƺ����͵���Ϣ
			ResultSetMetaData rsmd=rs.getMetaData();
			//��ȡ������е�����
			int columncount=rsmd.getColumnCount();
			//while������������������д�������
			while (rs.next()) {
				//����һ��HashMap���ڴ洢һ������
				HashMap<String, Object> onerow=new HashMap<String, Object>();
				//ѭ����ȡ������е���������������Ӧ��ֵ��ÿ��ѭ�����õ�һ���������磺{TEST_NAME=aaa, TEST_NO=2, TEST_PWD=aaa}
				for(int i=0;i<columncount;i++)
				{
					//��ȡָ���е����ƣ�ע��orcle�������Ĵ�Сд
					String columnName=rsmd.getColumnName(i+1);
					onerow.put(columnName, rs.getObject(i+1));
				}
				//����ȡ���Ķ���onewrow={TEST_NAME=aaa, TEST_NO=2, TEST_PWD=aaa}�ŵ������б���
				list.add(onerow);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			close();
		}
		return list;
	}
	
	/**
	 * ʵ����������sql
	 */
	public void batch (LinkedList<String> sqls) {
		try {
			conn=getConnection();
			st=conn.createStatement();
			//�����������ݿ��Ĭ����������ʽ��
			
			//1.�����ύ��ʽΪ�ֶ������Զ�auto��
			conn.setAutoCommit(false);
			
			//2.��Ҫ������SQL���洢��batch�����������У�ѭ�����Ҫͬʱִ�е�sql���
			for (int i = 0; i < sqls.size(); i++) {
				st.addBatch(sqls.get(i));
			}
			
			//3.ִ�������ύ
			st.executeBatch();
			
			//4.�ֶ��ύ
			conn.commit();
			
			//5.�ر�
			this.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	/**
	 * ʵ��oracle��ҳ����
	 * @param sql��Ҫ��ѯ��sql���
	 * @param pagesize��ÿҳ��ʾ�ļ�¼����
	 * @param pagenow	��ǰҳ��
	 * @return PageBean
	 */
	public PageBean getPage(String sql,int pagesize,int pagenow)
	{
		PageBean pb=new PageBean();
		int end=pagenow*pagesize;//���ݵ�ǰҳ����ÿҳ��ʾ�����������Ҫ��ѯ�������ֹ��
		int start=end-pagesize+1;//������ֹ����ÿҳ��ʾ�����������ʼ��
		/*ƴ��oracle��ҳsql���*/
		String exesql="select a.* from (select t.*,rownum as rowindex from ("+sql+") t " +
					  "where rownum<="+end+" ) a where a.rowindex>="+start;
		/*ƴ����ѯ�ܹ��ж�������sql���*/
		String countsql="select count(*) as rowcount from ("+sql+")";
		/*ִ�з�ҳsql��䣬������ѯ�Ľ���ŵ�PageBean��result�б�������*/
		//System.out.println("Dbutil---getPage---->"+exesql);
		pb.setResult(queryToList(exesql));
		/*���õ�ǰҳ��Ա����*/
		pb.setPagenow(pagenow);
		/*����ÿҳ������Ա����*/
		pb.setPagesize(pagesize);
		/*ִ��countsql��䣬�ó�һ���ж�������¼*/
		Map<String,Object> map=this.getOneRow(countsql);
		int rows=Integer.parseInt(map.get("ROWCOUNT").toString());
		/*�����ܹ�������Ա����*/
		pb.setRows(rows);
		/*������ҳ��*/
		int pages=rows%pagesize==0?rows/pagesize:rows/pagesize+1;
		pb.setPages(pages);
		/*���ò�ѯsql��Ա����*/
		pb.setSql(sql);
		return pb;
	}
	/**
	 * �ر����ݿ������ԴConnection Statement PreparedStatement ResultSet�ķ���
	 */
	private void close()
	{
	    if(rs!=null)
	    {
	    	try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	    }
	    
	    if(st!=null)
	    {
	    	try {
	    		st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	    }
	    if(pps!=null){
	    	try {
	    		pps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	    }
	    try {
			if(conn!=null&&!conn.isClosed())
			{
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}