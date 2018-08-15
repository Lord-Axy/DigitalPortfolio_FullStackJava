package com.dp.DaoImpl;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.dp.Dao.ImageDAO;
import com.dp.model.ImageStore;

public class ImageDaoImpl implements ImageDAO {

	
	@Override
	public List<ImageStore> allImage() {
		try{ 
			List<ImageStore> iss = new ArrayList<ImageStore>();
			 String named = UserDAOImpl.named; 
			System.out.println(named);
			Class.forName("org.h2.Driver");  
    		Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");  
    		 
    		Statement st = con.createStatement();
    		String sql="select * from "+named+";";
    		ResultSet rs = st.executeQuery(sql);
    		
    		while(rs.next()){
    			String name = rs.getString(1);
    			MultipartFile file = (MultipartFile) rs.getBlob(2);
    			System.out.println(name);
    			ImageStore is = new ImageStore();
    			is.setName(name);
    			is.setFile(file);
    			iss.add(is);
    		}
		return iss;
		}
		catch(Exception e){
			System.out.println("catched");
			e.printStackTrace();
			return null;
		}
	}

}
