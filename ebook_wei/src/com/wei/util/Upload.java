package com.wei.util;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
public class Upload {
	private Map<String,String> resultmap;
	public Map<String,String> getMap(List<FileItem> list,String path){
		resultmap=new HashMap<String,String>();
		try {
			for(int i=0;i<list.size();i++){
				FileItem fileitem=list.get(i);
				String fieldname=fileitem.getFieldName();
				if(fileitem.isFormField()){
					String filevalue=fileitem.getString("utf-8");
					resultmap.put(fieldname, filevalue);
				}else{
					String filename=fileitem.getName();
					if(!"".equals(filename)){
						Date dt=new Date();
						Random fd=new Random();
						SimpleDateFormat sd=new SimpleDateFormat("yyMMddHHmmssSS"+fd.nextInt());
						String datename=sd.format(dt);
						String Imagename=datename+"."+StringUtil.getExtension(filename);
						//System.out.println("upload------"+path);
						fileitem.write(new File(path,Imagename));
						resultmap.put(fieldname, Imagename);
					}
				}
			}
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultmap;
	}
	

}
