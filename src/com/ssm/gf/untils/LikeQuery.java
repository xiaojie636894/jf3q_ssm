package com.ssm.gf.untils;

import org.apache.commons.lang.StringUtils;

/**
 * 日期工具类
 * @author xiedy
 *
 */
public class LikeQuery {

      
     public static String add(String str) {
    	 if(StringUtils.isNotBlank(str))str="%"+str+"%";
          return str;
     }

    
      
    
}

