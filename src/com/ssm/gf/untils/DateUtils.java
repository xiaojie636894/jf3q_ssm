package com.ssm.gf.untils;

 



import java.text.SimpleDateFormat;
import java.util.Date;

 

/**
 * 日期工具类
 * @author jf3q.com
 *
 */
public class DateUtils {

     /**
      * 功能: 将日期对象按照某种格式进行转换，返回转换后的字符串
      *
      * @param date 日期对象
      * @param pattern 转换格式 例：yyyy-MM-dd
      */
     public static String DateToString(Date date, String pattern) {
          String strDateTime = null;
          SimpleDateFormat formater = new SimpleDateFormat(pattern);
          strDateTime = date == null ? null : formater.format(date);
          return strDateTime;
     }

     /**
      * 功能: 将传入的日期对象按照yyyy-MM-dd格式转换成字符串返回
      *
      * @param date 日期对象
      * @return String
      */
     public static String DateToString(Date date) {
          String _pattern = "yyyy-MM-dd";
          return date == null ? null : DateToString(date, _pattern);
     }

     /**
      * 功能: 将传入的日期对象按照yyyy-MM-dd HH:mm:ss格式转换成字符串返回
      *
      * @param date 日期对象
      * @return String
      */
     public static String DateTimeToString(Date date) {
          String _pattern = "yyyy-MM-dd HH:mm:ss";
          return date == null ? null : DateToString(date, _pattern);
     }
    
}

