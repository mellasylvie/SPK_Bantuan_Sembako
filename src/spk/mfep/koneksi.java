/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package spk.mfep;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;


public class koneksi {
    
    public static Connection koneksi;
    public Statement st;
    private static  com.mysql.jdbc.Connection con;
    
private static Connection KoneksiDB;
public static Connection ConnectDb(){
    if (KoneksiDB == null){
        try{
            String url;
            url="jdbc:mysql://localhost:3306/mfep";
            String username ="root";
            String password ="";
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            KoneksiDB = DriverManager.getConnection(url,username,password);
        }catch (SQLException t){
            JOptionPane.showMessageDialog(null, "error koneksi");
        }
} return KoneksiDB;

} static Object getConnection(){
    throw new UnsupportedOperationException ("Not yet implemented");
}

public void koneksi(){
        try{
            ConnectDb();
            st=KoneksiDB.createStatement();
        }catch(Exception x){
            JOptionPane.showMessageDialog(null,"Koneksi ambil Gagal, Pesan error \n"+x);
        }
    }

public void tutupKoneksi(ResultSet rs){
        try{
            if(rs!=null){
                rs.close();
            }
            st.close();
            KoneksiDB.close();
        }catch(Exception x){
            JOptionPane.showMessageDialog(null,"Tutup Koneksi Gagal, Pesan error \n"+x);
        }
    } 
    
    public ResultSet ambilData(String sql){
         ResultSet rs=null;
         try{
            koneksi();
            rs=st.executeQuery(sql);
         }catch(Exception x){
             JOptionPane.showMessageDialog(null,"Ambil Data Gagal, Pesan error : \n"+x);
         }
         return rs;
    }

public void simpanData(String sql){
        try{
            koneksi();
            st.executeUpdate(sql);
        }catch(Exception x){
            System.out.print(x);
        }
    }

}