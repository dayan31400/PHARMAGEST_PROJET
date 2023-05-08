/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Phamagest;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author TOYIFANE
 */
public class Connect {
      static Connection con;
     public static Connection getConnection(){
       try{
    Class.forName("org.postgresql.Driver"); 
    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/PHARMACIE",
            "postgres", "toyifane");
    if(con!=null)return con ;
   }catch(Exception e){
    JOptionPane.showMessageDialog(null, e.getMessage(),"Error",2);
   }
   return null ;
} 
    
}
