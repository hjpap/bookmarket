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
 * 用户数据库访问的类
 *@作者Administrator
 *@createTime 2011-12-5 上午11:55:18
 *@version 1.0
 */
public class DButil {

	private Connection conn;
	private Statement st;
	private PreparedStatement pps;
	private ResultSet rs;
	private DataSource ds;
	
	/**
	 * 获取连接的方法
	 * @return Connection 一个有效的数据库连接
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
	 * 用于执行更新的方法,包括（insert delete update）操作
	 * @param sql String 类型的SQL语句
	 * @return Integer 表示受影响的行数
	 */
	public int update(String sql)
	{
		//定义变量用来判断更新操作是否成功，如果返回-1说明没有影响到更新操作的数据库记录条数，即更新操作失败
		int row=-1;
		try {
			//如果数据库链接被关闭了，就要既得一个新的链接
			if(conn==null||conn.isClosed()){
				 conn=getConnection();
			}
			//使用Connection对象conn的createStatement()创建Statement（数据库语句对象）st
			st=conn.createStatement();
			//执行更新操作，返回影响的记录条数row
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
	 * 基于PreparedStatement的修改方法 PreparedStatement:表示预编译的 SQL 语句的对象
	 * @param sql  String 类型的SQL语句（insert delete update）
	 * @param obj 存放动态参数的数组
	 * @return Integer 表示受影响的行数
	 */
	public int update(String sql,Object ...obj)
	{
		try {
			//获取链接
			if(conn==null||conn.isClosed()){
				 conn=getConnection();
			}
			//创建预编译的 SQL 语句对象
			pps=conn.prepareStatement(sql);
			//定义变量length代表数组长度，也就是预处理的sql语句中的参数个数 
			int length=0;
			//ParameterMetaData：用于获取关于 PreparedStatement 对象中每个参数的类型和属性信息的对象
			ParameterMetaData pmd=pps.getParameterMetaData();
			length=pmd.getParameterCount();
			//循环将sql语句中的?设置为obj数组中对应的值，注意从1开始，所以i要加1
			for(int i=0;i<length;i++)
			{
				pps.setObject(i+1, obj[i]);
			}
			//执行更新操作
			return pps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close();
		}
		
		return -1;
	}
	/**
	 * 获取一条记录的方法，要依赖于下面的queryToList方法，注意泛型的使用
	 * @param sql
	 * @return　Map<String,Object>
	 */
	public Map<String,Object> getOneRow(String sql)
	{
		//执行下面的queryToList方法
		List<Map<String,Object>> list=queryToList(sql);
		//三目运算，查询结果list不为空返回list中第一个对象,否则返回null
		return list.size()>0?list.get(0):null;
	}
	
	/**
	 * 返回查询结果列表，形如：[{TEST_NAME=aaa, TEST_NO=2, TEST_PWD=aaa}, {TEST_NAME=bbb, TEST_NO=3, TEST_PWD=bbb}...]
	 * @param sql
	 * @return List<Map<String,Object>>
	 */
	public List<Map<String,Object>> queryToList(String sql)
	{
		//创建集合列表用以保存所有查询到的记录
		List<Map<String, Object>> list=new LinkedList<Map<String, Object>>();
		try {
			if(conn==null||conn.isClosed()){
				 conn=getConnection();
			}
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			//ResultSetMetaData 是结果集元数据，可获取关于 ResultSet 对象中列的类型和属性信息的对象 例如：结果集中共包括多少列，每列的名称和类型等信息
			ResultSetMetaData rsmd=rs.getMetaData();
			//获取结果集中的列数
			int columncount=rsmd.getColumnCount();
			//while条件成立表明结果集中存在数据
			while(rs.next())
			{
				//创建一个HashMap用于存储一条数据
				HashMap<String, Object> onerow=new HashMap<String, Object>();
				//循环获取结果集中的列名及列名所对应的值，每次循环都得到一个对象，形如：{TEST_NAME=aaa, TEST_NO=2, TEST_PWD=aaa}
				for(int i=0;i<columncount;i++)
				{
					//获取指定列的名称，注意orcle中列名的大小写
					String columnName=rsmd.getColumnName(i+1);
					onerow.put(columnName, rs.getObject(i+1));
				}
				//将获取到的对象onewrow={TEST_NAME=aaa, TEST_NO=2, TEST_PWD=aaa}放到集合列表中
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
	 * 返回查询结果列表,使用的是预编绎SQL 语句对象PreparedStatement
	 * 形如：[{TEST_NAME=aaa, TEST_NO=2, TEST_PWD=aaa}, {TEST_NAME=bbb, TEST_NO=3, TEST_PWD=bbb}]
	 * @param sql
	 * @param paramValues
	 * @return List<Map<String,Object>>
	 */
	public List<Map<String,Object>> queryWithParam(String sql,Object ...paramValues){
		//创建集合列表用以保存所有查询到的记录
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
			//ResultSetMetaData 是结果集元数据，可获取关于 ResultSet 对象中列的类型和属性信息的对象 例如：结果集中共包括多少列，每列的名称和类型等信息
			ResultSetMetaData rsmd=rs.getMetaData();
			//获取结果集中的列数
			int columncount=rsmd.getColumnCount();
			//while条件成立表明结果集中存在数据
			while (rs.next()) {
				//创建一个HashMap用于存储一条数据
				HashMap<String, Object> onerow=new HashMap<String, Object>();
				//循环获取结果集中的列名及列名所对应的值，每次循环都得到一个对象，形如：{TEST_NAME=aaa, TEST_NO=2, TEST_PWD=aaa}
				for(int i=0;i<columncount;i++)
				{
					//获取指定列的名称，注意orcle中列名的大小写
					String columnName=rsmd.getColumnName(i+1);
					onerow.put(columnName, rs.getObject(i+1));
				}
				//将获取到的对象onewrow={TEST_NAME=aaa, TEST_NO=2, TEST_PWD=aaa}放到集合列表中
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
	 * 实现批量处理sql
	 */
	public void batch (LinkedList<String> sqls) {
		try {
			conn=getConnection();
			st=conn.createStatement();
			//批量处理（数据库会默认是用事务方式）
			
			//1.设置提交方式为手动（非自动auto）
			conn.setAutoCommit(false);
			
			//2.将要批量的SQL语句存储到batch（缓冲区）中，循环添加要同时执行的sql语句
			for (int i = 0; i < sqls.size(); i++) {
				st.addBatch(sqls.get(i));
			}
			
			//3.执行批量提交
			st.executeBatch();
			
			//4.手动提交
			conn.commit();
			
			//5.关闭
			this.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	/**
	 * 实现oracle分页功能
	 * @param sql　要查询的sql语句
	 * @param pagesize　每页显示的记录条数
	 * @param pagenow	当前页数
	 * @return PageBean
	 */
	public PageBean getPage(String sql,int pagesize,int pagenow)
	{
		PageBean pb=new PageBean();
		int end=pagenow*pagesize;//根据当前页数及每页显示的条数计算出要查询结果的终止数
		int start=end-pagesize+1;//依据终止数和每页显示条数计算出开始数
		/*拼出oracle分页sql语句*/
		String exesql="select a.* from (select t.*,rownum as rowindex from ("+sql+") t " +
					  "where rownum<="+end+" ) a where a.rowindex>="+start;
		/*拼出查询总共有多少条的sql语句*/
		String countsql="select count(*) as rowcount from ("+sql+")";
		/*执行分页sql语句，将所查询的结果放到PageBean的result列表属性中*/
		//System.out.println("Dbutil---getPage---->"+exesql);
		pb.setResult(queryToList(exesql));
		/*设置当前页成员变量*/
		pb.setPagenow(pagenow);
		/*设置每页条数成员变量*/
		pb.setPagesize(pagesize);
		/*执行countsql语句，得出一共有多少条记录*/
		Map<String,Object> map=this.getOneRow(countsql);
		int rows=Integer.parseInt(map.get("ROWCOUNT").toString());
		/*设置总共条数成员变量*/
		pb.setRows(rows);
		/*计算总页数*/
		int pages=rows%pagesize==0?rows/pagesize:rows/pagesize+1;
		pb.setPages(pages);
		/*设置查询sql成员变量*/
		pb.setSql(sql);
		return pb;
	}
	/**
	 * 关闭数据库各种资源Connection Statement PreparedStatement ResultSet的方法
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