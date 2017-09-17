package com.ssm.gf.untils;

import org.apache.commons.lang.StringUtils;

/**
 *  @author jf3q.com
 *
 */
public class LikeQuery {

      
     public static String add(String str) {
    	 if(StringUtils.isNotBlank(str))str="%"+str+"%";
          return str;
     }

    
      
    
}

