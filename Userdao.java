package com.dao;  
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;
import com.bean.User;
public class Userdao {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try
    {  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","","");  
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }  
    return con;  
}  
public static int save(User u){  
    int status=0;  
    try
    {  
        Connection con=getConnection();
        String query = "insert into register(username,password,repassword,firstname,lastname,email,phone,location) values(?,?,?,?,?,?,?,?)";
        PreparedStatement ps=con.prepareStatement(query);//,PreparedStatement.RETURN_GENERATED_KEYS  
        
        ps.setString(1,u.getUsername());  
        ps.setString(2,u.getPassword());  
        ps.setString(3,u.getRepassword());  
        ps.setString(4,u.getFirstname());  
        ps.setString(5,u.getLastname());
        ps.setString(6,u.getEmail());
        ps.setString(7,u.getPhone());
        ps.setString(8,u.getLocation());
        status=ps.executeUpdate();  
    }
    catch(Exception e){
    	e.printStackTrace();
    }  
    return status;  
}
public static int update(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();
        String query = "update register set firstname=?,lastname=?,email=?,phone=?,location=? where id=?";
        PreparedStatement ps=con.prepareStatement(query); 
        /*ps.setString(1,u.getUsername());
        ps.setString(2,u.getPassword());
        ps.setString(3,u.getRepassword());*/
        ps.setString(1,u.getFirstname());
        ps.setString(2,u.getLastname());
        ps.setString(3,u.getEmail());
        ps.setString(4,u.getPhone());
        ps.setString(5,u.getLocation());
        ps.setInt(6,u.getId());
        status=ps.executeUpdate();
    
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }  
    return status;  
}

public static int delete(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from register where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }  
  
    return status;  
}  
public static List<User> getAllRecords(){  
    List<User> list=new ArrayList<User>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from register");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            User u=new User();  
            u.setId(rs.getInt("id"));
            u.setUsername(rs.getString("username"));
            u.setPassword(rs.getString("password"));
            u.setRepassword(rs.getString("repassword"));
            u.setFirstname(rs.getString("firstname"));
            u.setLastname(rs.getString("lastname"));
            u.setEmail(rs.getString("email"));
            u.setPhone(rs.getString("phone"));  
            u.setLocation(rs.getString("location"));  
            list.add(u);  
        }  
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }  
    return list;  
}  

public static User getRecordById(int id){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from register where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();  
            u.setId(rs.getInt("id"));
            u.setUsername(rs.getString("username"));
            u.setPassword(rs.getString("password"));
            u.setRepassword(rs.getString("repassword"));
            u.setFirstname(rs.getString("firstname"));
            u.setLastname(rs.getString("lastname"));
            u.setEmail(rs.getString("email"));
            u.setPhone(rs.getString("phone"));  
            u.setLocation(rs.getString("location"));  
        }  
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }  
    return u;  
}  
}