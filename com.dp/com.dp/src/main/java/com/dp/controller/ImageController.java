package com.dp.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.imageio.ImageIO;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dp.DaoImpl.ImageDaoImpl;
import com.dp.DaoImpl.UserDAOImpl;
import com.dp.model.ImageStore;

@Controller
public class ImageController {
	static String path="resources\\imagestemp\\";
	ImageDaoImpl imageDAO;
	public static String name=null;
	
	 @RequestMapping(value="uploadServlet", method=RequestMethod.POST)  
	    public String saveimage( @ModelAttribute("ImageAgent") ImageStore imagestore) throws Exception{  
	    	
	    	System.out.println(imagestore.getName());
	    	
	    	
	    	String name = imagestore.getName();
	    	String finalpath=path+name+".jpg";
	    	byte[] bytes=((MultipartFile)imagestore.getFile()).getBytes();
	    	
	    	FileOutputStream fos=new FileOutputStream(new File(finalpath));
	    	BufferedOutputStream bos=new BufferedOutputStream(fos);
	    	bos.write(bytes);
	    	bos.close();
	    	fos.close();
	    	int i;
	    	try{  
	    		Class.forName("org.h2.Driver");  
	    		Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");  
	    		 String named = UserDAOImpl.named;
	    		 System.out.println(named);
	    		PreparedStatement ps=con.prepareStatement("insert into "+named+" values(?,?)");  
	    		ps.setString(1,name);  
	    		  
	    		FileInputStream fin=new FileInputStream(finalpath);  
	    		ps.setBinaryStream(2,fin,fin.available());  
	    		i=ps.executeUpdate();  
	    		System.out.println(i+" records affected");  
	    		          
	    		con.close();  
	    		String paths=path; 
	            File file = new File(paths);
	            File[] files = file.listFiles(); 
	            int j=1;
	            for (File f:files) 
	            {if (f.isFile() && f.exists()) 
	            	{ 
	            	f.delete();
	            	System.out.println(j);
	    System.out.println("successfully deleted");
	    j++;
	                }else{
	    System.out.println("cant delete a file due to open or error");
	    } }
	            
	    		return "table";
	    		
	    		}
	    	catch (Exception e) {
	    			System.out.println("catched");
	    			e.printStackTrace();
	    			return "error";
	    		}  
	    	
	    }
	 
	 @RequestMapping("/delete")  
	    public String delete(@RequestParam("name")String n) {
		 try{  
	    		Class.forName("org.h2.Driver");  
	    		Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");  
	    		 String named = UserDAOImpl.named;
	    		 System.out.println(named);
	    		 Statement st = con.createStatement();
	    		 System.out.println(n);
	    		 String sql="DELETE FROM "+named+" WHERE name= '"+n+"';";
	    		 st.executeUpdate(sql);
	        return "table";  
	    } 
		 catch(Exception e){
			 
			 e.printStackTrace();
			 return "error";
		 }
	 }
	 
	 @RequestMapping("/downloads")
	 public ModelAndView download(@RequestParam("name")String n){
		 String finalpath=null;
		 name=n;
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
		 
		 String s ="D:/New folder/Dpbp/com.dp/src/main/webapp/WEB-INF/imagestemp/"+n+".jpg";
		 ModelAndView m = new ModelAndView("image","imgsrc",s);
		 
		 return m;
	 }
	 
	@RequestMapping("/table")
	public String tableviewr(){
	return "table";
	}
}
