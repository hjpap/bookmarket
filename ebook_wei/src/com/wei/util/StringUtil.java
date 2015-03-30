package com.wei.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.CharArrayWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.Writer;
import java.lang.reflect.Method;
import java.sql.Blob;
import java.sql.Clob;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtil {

	public static String clobToString(Clob clob) {
		Reader is = null;
		String content = new String();
		try {
			if (clob != null) {
				is = clob.getCharacterStream();
				BufferedReader br = new BufferedReader(is);
				String s = br.readLine();
				while (s != null) {
					content += s;
					content += "\n";
					s = br.readLine();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return content;
	}

	public static char[] clobToChars(Clob clob) {
		CharArrayWriter writer = new CharArrayWriter();
		InputStreamReader is = null;
		try {
			if (clob != null) {
				is = new InputStreamReader(clob.getAsciiStream());
				BufferedReader br = new BufferedReader(is);
				int read = 0;
				char[] c = new char[1024];
				while ((read = br.read(c)) > 0) {
					writer.write(c, 0, read);
				}
				c = null;
				is.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return writer.toCharArray();
	}

	public static String blobToString(Blob blob) {
		StringBuilder buf = new StringBuilder();
		InputStreamReader is = null;
		if (blob != null) {
			try {
				is = new InputStreamReader(blob.getBinaryStream());
				BufferedReader br = new BufferedReader(is);
				int read = 0;
				char[] c = new char[1024];
				while ((read = br.read(c)) > 0) {
					buf.append(c, 0, read);
				}
				c = null;
				is.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return buf.toString();
	}

	public static byte[] blobToBytes(Blob blob) {
		ByteArrayOutputStream baos = null;
		InputStream is = null;
		if (blob != null) {
			try {
				is = blob.getBinaryStream();
				baos = new ByteArrayOutputStream();
				int read = 0;
				byte[] b = new byte[1024];
				while ((read = is.read(b)) > 0) {
					baos.write(b, 0, read);
				}
				b = null;
				is.close();
				return baos.toByteArray();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	public static Clob oracleStr2Clob(String str, Clob lob) throws Exception {
		Method methodToInvoke = lob.getClass().getMethod(
				"getCharacterOutputStream", (Class[]) null);
		Writer writer = (Writer) methodToInvoke.invoke(lob, (Object[]) null);
		writer.write(str);
		writer.close();
		return lob;
	}

	public static boolean validateNull(String args) {
		if (args == null || args.length() == 0) {
			return true;
		} else {
			return false;
		}
	}

	public static String chanageNull(String source, String target) {
		if (source == null || source.length() == 0
				|| source.equalsIgnoreCase("null")) {
			return target;
		} else {
			return source;
		}
	}

	public static String HTMLChange(String source) {
		String changeStr = "";
		changeStr = source.replaceAll("&", "&amp;");
		changeStr = changeStr.replaceAll(" ", "&nbsp;");
		changeStr = changeStr.replaceAll("<", "&lt;");
		changeStr = changeStr.replaceAll(">", "&gt;");
		changeStr = changeStr.replaceAll("\r\n", "<br/>");
		// changeStr = changeStr.replaceAll("<br>", "");
		return changeStr;
	}

	/*
	 * public static String clobToString(Clob c) { String content = new
	 * String(); Clob clob = c; try { if (clob != null) { Reader is =
	 * clob.getCharacterStream(); BufferedReader br = new BufferedReader(is);
	 * String s = br.readLine(); while (s != null) { content += s; s =
	 * br.readLine(); } } } catch (Exception e) { e.printStackTrace(); } return
	 * content; }
	 */

	public static String cutEucStr(String _str, int len) {
		String retStr = "";
		_str = _str.trim();
		try {
			if (_str != null && !"".equals(_str)) {
				if (_str.length() > len) {
					String temp = _str.substring(0, len);
					int blank_index = temp.lastIndexOf(" ");
					if (blank_index > 0) {
						retStr = _str.substring(0, blank_index) + "...";
					} else {
						retStr = temp + "...";
					}
				} else {
					retStr = _str;
				}
			}
		} catch (Exception ex) {
			retStr = "";
		}
		return retStr;
	}

	public static String getMaxNumber(String number) {
		if (number.length() == 1)
			number = "00" + number;
		if (number.length() == 2)
			number = "0" + number;
		return number;
	}

	public static String printXing(int m) {
		String blank = "*";
		StringBuffer sb = new StringBuffer();
		for (int i = 1; i <= m; i++) {
			sb.append(blank);
		}
		return sb.toString();
	}

	public static String constructSql(String sql, Object[] array) {
		String key = "\\?";
		Pattern p = Pattern.compile(key);
		Matcher m = p.matcher(sql);
		StringBuffer stringBuffer = new StringBuffer();
		int i = 0;
		boolean result = m.find();
		while (result) {
			m.appendReplacement(stringBuffer, array[i].toString());
			result = m.find();
			i++;
		}
		return String.valueOf(m.appendTail(stringBuffer));
	}

	public static String toHtml(String str) {
		StringBuffer strBuffer = new StringBuffer();
		for (int i = 0; i < str.length(); i++) {
			if (str.charAt(i) == '\n') {
				strBuffer.append("<br/>");
			} else {
				strBuffer.append(str.charAt(i));
			}
		}
		return strBuffer.toString();
	}

	public static String getExtension(String filename) {
		String defExt = "";
		if ((filename != null) && (filename.length() > 0)) {
			int i = filename.lastIndexOf('.');

			if ((i > -1) && (i < (filename.length() - 1))) {
				return filename.substring(i + 1);
			}
		}
		return defExt;
	}

	/*
	 * public void test(){ InputStream inputStream =
	 * this.getClass().getClassLoader().getResourceAsStream("smsid.properties");
	 * Properties p = new Properties(); try { p.load(inputStream); } catch
	 * (IOException e1) { e1.printStackTrace();
	 *  } System.out.println("ip:"+p.getProperty("id")); }
	 */

	/*
	 * public void setProperty(){ Properties props = new Properties(); String
	 * path
	 * =props.getClass().getResource("/com/eastpolice/util/smsid.properties").getPath();
	 * System.out.println(path); try { Writer w=new FileWriter(path);
	 * props.setProperty("bb", "bb update string"); props.store(w,"bb");
	 * w.close(); OutputStream fos = new FileOutputStream(path);
	 * props.setProperty("id", "2222"); props.store(fos, "id"); fos.close();
	 *  } catch (IOException e) { System.err.println("update property error!"); }
	 *  }
	 */

	private static void writeSmsid(String path, String str) {
		File f = new File(path);
		BufferedWriter bw = null;
		try {
			bw = new BufferedWriter(new FileWriter(f));
			bw.write(str);
			bw.flush();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if (bw != null) {
					bw.close();
				}
			} catch (Exception e) {
			}
		}

	}

	public static int readSmsid(String path) {
		int id = 0;
		try {
			InputStream is = new FileInputStream(path);
			StringBuffer buffer = new StringBuffer();
			String line;
			BufferedReader reader = new BufferedReader(
					new InputStreamReader(is));
			line = reader.readLine();
			while (line != null) {
				buffer.append(line);
				// buffer.append("\\n");
				line = reader.readLine();
			}
			id = Integer.parseInt(buffer.toString());
			is.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return id;
	}

	public static String getSmsId(String path) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmm");
		String id1 = formatter.format(new Date());
		int id2 = readSmsid(path);
		DecimalFormat df = new DecimalFormat("000000");
		String end = df.format(id2);
		int new_id = id2 + 1;
		writeSmsid(path, String.valueOf(new_id));
		return id1 + end;
	}
}
