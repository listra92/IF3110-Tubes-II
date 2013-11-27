import java.util.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Barang_Model {
    SQL database;
    
    public Barang_Model(ServletContext ctx){
        //database=new SQL(ctx);
    }
    
    public Object getAllCategory(){
        return null;
    }
    
    public Object get3BestBarang(int id_kategori){
        return null;
    }
    
    public Object countBarang(){
        return null;
    }
    
    public Object countCariBarang(String nama_barang,String kategori,int harga,String operator){
        return null;
    }
    
    public Object cariBarang(String nama_barang,String kategori,int harga,String operator,int offset){
        return null;
    }
    
    public Object getAllBarang(String sort,String jenisSort,int offset){
        return null;
    }
    
    public Object getBarangID(int id){
        return null;
    }
    
    public Object getOnlyBarangID(int id){
        return null;
    }
    
    public void Beli(int id_card){
        
    }
    
    public void AddCart(int id_barang,int jumlah_barang, String deskripsi_tambahan){
        
    }
    
    public void UpdateCart(int id,int jumlah_barang){
        
    }
    
    public Object getCart(int id){
        return null;
    }
    
    public Object generateCart(){
        return null;
    }
    
    public void deleteBarang(int id){
        
    }
}
