package com.springbatchuser.batch;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.database.JdbcBatchItemWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class SqlWritter implements ItemWriter<String> {
	@Autowired
	private DataSource dataSource;
	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;

	Connection con;
	Statement stmt;
	
	   
	   Connection getConnection()
	    {
	    	
			 try {
				 try {
					Class.forName("org.h2.Driver");
					con=DriverManager.getConnection(  
							"jdbc:h2:~/test","sa","");
				} catch (ClassNotFoundException e) {
					
					//e.printStackTrace();
					System.out.println("class not found exception");
					}
				 
			} catch (SQLException e) {
				
				System.err.println("sql unique constains violation ! swlwct another file");
				
			}
			return con;	
	    }
	    
	@Override
	public void write(List<? extends String> items) throws Exception {
		
		
	      
	      
		
		for (String string : items) {
			if(string.isEmpty())
			{
				
			}else {
			System.out.println("item reader values "+ string);
			
			  con = getConnection(); stmt = con.createStatement();
			  try{
				  
			  stmt.executeUpdate(string);
			  
			  }catch(Exception e)
			  {
				 // e.printStackTrace();
				  System.err.println("unique constraint  exception ! unable to insert to database");
			  }
			 
			}
			
			//databaseItemWriter.setSql(string);
		}

		// return databaseItemWriter;

	}

}
