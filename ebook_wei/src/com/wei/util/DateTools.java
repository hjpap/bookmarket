package com.wei.util;



import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;



/**
 * @author 
 */
public class DateTools {

	public static final String SIGN = "-";
	public static final String SP = "";
	/**
	 * 年月日时
	 * @return String 类型的时间
	 */
	public static String getDateTimeToHour() {
		Date date = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH");
		return sf.format(date);
	}
	
	/**
	 * 年月日时分秒
	 * @return String 类型的时间
	 */
	public static String getDateTimeToSecond() {
		Date date = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sf.format(date);
	}
	
	/**
	 * 年月日
	 * @return String 类型的时间
	 */
	public static String getDateTime() {
		Date date = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		return sf.format(date);
	}

        /**
	 * 月日
	 * @return String 类型的时间
	 */
	public static String getMonthDay() {
		Date date = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("MM-dd");
		return sf.format(date);
	}

	/**
	 * 生成32位主键
	 * @return String  code
	 * */
	public static synchronized String getPk() {
		String code = null;
		try {
			code = UUID.randomUUID().toString();
			code = code.replaceAll(SIGN, SP);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return code;
	}
	public static void main(String[] args) {
		System.out.println(DateTools.getDateTime());
		System.out.println(DateTools.getDateTimeToHour());
		System.out.println(DateTools.getDateTimeToSecond());
		System.out.println(DateTools.getPk());
	}
	
	/**
	 * 主键
	 * @return String 类型的时间
	 */
	public static String getDateTimeCode() {
		int i=new Random().nextInt(99999);
		Date date = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddss");
		String key=sf.format(date).toString()+String.valueOf(i);
		return key;
	}
	
}
