package com.dp.controller;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dp.DaoImpl.UserDAOImpl;
import com.dp.model.ImageStore;



@Controller  
public class BaseController {  
	static String path="D:\\New folder\\Dpbp\\com.dp\\src\\main\\webapp\\WEB-INF\\imagestemp\\";
    @RequestMapping("/")  
    public ModelAndView index() {
    	try{
    	String paths=path; 
        File file = new File(paths);
        File[] files = file.listFiles(); 
        int j=1;
        for (File f:files) 
        {
        	if (f.isFile() && f.exists()) 
        	{ f.delete();
        	System.out.println(j);
        	System.out.println("successfully deleted");
			j++;
            }
        	else{
                        System.out.println("cant delete a file due to open or error");
} }
        String message = "";  
        return new ModelAndView("index", "message", message);  
    }catch(Exception e){
    	return new ModelAndView("index", "message", ""); 
    }  
    }
    
      
    @RequestMapping("/file")
    public ModelAndView file(){
    	ModelAndView m = new ModelAndView("form");
    	m.addObject("ImageAgent", new ImageStore());
		//m.addObject("catlist", categoryDAO.allCategory());
    	
		m.addObject("check",true);
			return m;	
    }
    @RequestMapping("/login")
    public ModelAndView login(@RequestParam("name")String name,@RequestParam("password")String password){
    	try{
    		Class.forName("org.h2.Driver");  
    		Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");  
    		 boolean flag= false;
    		Statement st = con.createStatement();
    		String sql="Select * from User;";
    		ResultSet rs=st.executeQuery(sql);
    		while(rs.next()){
    			if((name.equals(rs.getString("name")))&&(password.equals(rs.getString("password")))){
    				flag=true;
    				System.out.println(rs.getString(1)+rs.getString(3));
    			}
    			
    			
    			}
    		System.out.println(name+password+flag);
    		if(flag){
				ModelAndView m = new ModelAndView("form");
				m.addObject("ImageAgent", new ImageStore());
				UserDAOImpl.named=name;
				return m;
			}
			else{
				ModelAndView m = new ModelAndView("index");
	    		m.addObject("message", "Invalid Username or Password");
	    		return m;
    		}
    		
    		
    	}catch(Exception e){
    		ModelAndView m = new ModelAndView("index");
    		m.addObject("message", "Invalid Username or Password");
    		return m;
    	}
    	
    	
    }
   	
    		
    }  
    
  

  
