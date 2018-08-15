package com.dp.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dp.DaoImpl.UserDAOImpl;
 
@Controller
public class FileDownloadController {
     
	static String path="D://New folder//Dpbp//com.dp//src//main//webapp//WEB-INF//imagestemp//";
    //private String EXTERNAL_FILE_PATH="D:/New folder/Dpbp/com.dp/src/main/webapp/WEB-INF/imagestemp/";
     
 
    
    @RequestMapping(value="/download", method = RequestMethod.GET)
    public void downloadFile(HttpServletResponse response, @RequestParam("name")String n) throws IOException {
    	 String finalpath=null;
    	  String EXTERNAL_FILE_PATH="D://New folder//Dpbp//com.dp//src//main//webapp//WEB-INF//imagestemp//";
    	  
    	  Path p=Paths.get(EXTERNAL_FILE_PATH);
    	  if(Files.notExists(p,new LinkOption[]{ LinkOption.NOFOLLOW_LINKS}))
    	  {
    		  Files.createDirectory(p);
    	  }
    	  
    	try{  
    		Class.forName("org.h2.Driver");  
    		Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");  
    		 String named = UserDAOImpl.named;
    		 System.out.println(named);
    		 Statement st = con.createStatement();
    		 System.out.println(n);
    		 String sql = "select * from "+named+" where name='"+n+"';";
    		 ResultSet resultSet = st.executeQuery(sql);
    		 //byte[] b=null;
    		 Blob blob = null;
    		 
    		 while(resultSet.next()){
    			 blob = resultSet.getBlob("file");
    		 }
    		 byte [] data = blob.getBytes( 1, ( int ) blob.length() );
    		 BufferedImage img = null;
    		 //System.out.println(b);
    		 finalpath=path+n+".jpg";
    		 try {
    			 img = ImageIO.read(new ByteArrayInputStream(data));
    			 } catch (IOException e) {
    			     e.printStackTrace();
    			 }
    		 File outputfile = new File(finalpath);
    		 ImageIO.write(img, "jpg", outputfile);
    		
    		 
	 }
	 
	 catch(Exception e){e.printStackTrace();}
        File file = null;
         EXTERNAL_FILE_PATH=EXTERNAL_FILE_PATH+n+".jpg";
        
            file = new File(EXTERNAL_FILE_PATH);
        
         
        if(!file.exists()){
            String errorMessage = "Sorry. The file you are looking for does not exist";
            System.out.println(EXTERNAL_FILE_PATH);
            System.out.println(errorMessage);
            OutputStream outputStream = response.getOutputStream();
            outputStream.write(errorMessage.getBytes(Charset.forName("UTF-8")));
            outputStream.close();
            return;
        }
         String mimeType=null;
       //String mimeType= URLConnection.guessContentTypeFromName(file.getName());
        if(mimeType==null){
            System.out.println("mimetype is not detectable, will take default");
            mimeType = "application/octet-stream";
        }
         
        System.out.println("mimetype : "+mimeType);
         
        response.setContentType(mimeType);
         
        /* "Content-Disposition : inline" will show viewable types [like images/text/pdf/anything viewable by browser] right on browser 
            while others(zip e.g) will be directly downloaded [may provide save as popup, based on your browser setting.]*/
        response.setHeader("Content-Disposition", String.format("inline; filename=\"" + file.getName() +"\""));
 
         
        /* "Content-Disposition : attachment" will be directly download, may provide save as popup, based on your browser setting*/
        //response.setHeader("Content-Disposition", String.format("attachment; filename=\"%s\"", file.getName()));
         
        response.setContentLength((int)file.length());
 
        InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
 
        //Copy bytes from source to destination(outputstream in this example), closes both streams.
        FileCopyUtils.copy(inputStream, response.getOutputStream());
        EXTERNAL_FILE_PATH="D:/New folder/Dpbp/com.dp/src/main/webapp/WEB-INF/imagestemp/";
    }
 
}