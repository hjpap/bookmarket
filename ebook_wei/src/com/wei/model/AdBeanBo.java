package com.wei.model;

import java.math.BigDecimal;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import com.wei.util.DButil;

public class AdBeanBo {

	
	
	/*
	 * 查找相应广告信息
	 * */
	public List<AdBean> getAd(String type){
		String sql="select * from EBOOK_AD where AD_TYPE='"+type+"'";
		DButil db=new DButil();
		List<Map<String, Object>> list=db.queryToList(sql);
		
		List<AdBean> ads=new LinkedList<AdBean>();
		for(int i=0;i<list.size();i++){
			AdBean ad=new AdBean();
			ad.setAd_id(list.get(i).get("AD_ID").toString());
			ad.setAd_image((String)list.get(i).get("AD_IMAGE"));
			ad.setAd_title((String)list.get(i).get("AD_TITLE"));
			ad.setAd_type((String)list.get(i).get("AD_TYPE"));
			ad.setAd_url((String)list.get(i).get("AD_URL"));
			ads.add(ad);
		}
	 return ads;
		
	}
	/*
	 * 修改广告内容
	 * */
	public void alterAd(AdBean ad){
		String sql="update EBOOK_AD set AD_TITLE='',AD_URL='',AD_IMAGE='',AD_TYPE=''";
		
	}
	/*
	 * 查找相应广告信息
	 * */
	public AdBean getAdById(String id){
		String sql="select * from EBOOK_AD where AD_ID='"+id+"'";
		DButil db=new DButil();
		Map<String, Object> list=db.getOneRow(sql);
		
		
		
			AdBean ad=new AdBean();
			ad.setAd_id(list.get("AD_ID").toString());
			ad.setAd_image(list.get("AD_IMAGE").toString());
			ad.setAd_title(list.get("AD_TITLE").toString());
			ad.setAd_type(list.get("AD_TYPE").toString());
			ad.setAd_url(list.get("AD_URL").toString());
			
		
	 return ad;
		
	}
	
	
}
