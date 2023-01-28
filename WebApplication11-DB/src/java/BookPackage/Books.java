/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BookPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Akila
 */
class Books {
Statement st;
    
void addBooks(String btitle, String bauthor, String bpub) {
        connectToDb();
       String sql="INSERT INTO books(Title,Author,Publisher) VALUES ('"+btitle+"','"+bauthor+"','"+bpub+"')";
    
       try{
         st.executeUpdate(sql);     
       } catch(SQLException ex)
       {
            Logger.getLogger(Books.class.getName()).log(Level.SEVERE,null,ex);
       }
       
    }
    


    private void connectToDb() {      
      String url="jdbc:mysql://localhost:3306/mylibrarydb";
      try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(url,"root","");
        st=con.createStatement();
     } catch (ClassNotFoundException|SQLException ex)
     {
         
      }
    }

    List viewBooks() {
            String sql="Select * from BOOKS";
            List booklist = new ArrayList ();
            connectToDb();
    try {
        ResultSet rs=st.executeQuery(sql);
        booklist.add(rs.getString("Title"));
        booklist.add(rs.getString("Author"));
        booklist.add(rs.getString("Publisher"));
    } catch (SQLException ex) {
        Logger.getLogger(Books.class.getName()).log(Level.SEVERE, null, ex);
    }
    return booklist;
    }

   
   
}
