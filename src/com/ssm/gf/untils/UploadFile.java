package com.ssm.gf.untils;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.ssm.gf.cons.Sys;
/**
 *  @author jf3q.com
 *
 */
public class UploadFile {

	 
     public static String upimg( MultipartFile file,HttpServletRequest request) {
    	
         String path = request.getSession().getServletContext().getRealPath(Sys.Upimg.path+Sys.Upimg.ad);  
         String fileName = UUID.randomUUID().toString().replace("-", "").substring(1, 11)+".jpg";  
           
         File targetFile = new File(path, fileName);  
         if(!targetFile.exists()){  
             targetFile.mkdirs();  
         }  
         try {  
             file.transferTo(targetFile);  
         } catch (Exception e) {  
             e.printStackTrace();  
         }  
        return   Sys.Upimg.path+Sys.Upimg.ad+fileName  ;
     }

     public static void deleteFile(HttpServletRequest request,String path){   
		 String abPath= request.getRealPath("")+path;
		 File f=new File(abPath);
		 if(f.exists())f.delete();
     } 
    
      
    
}

