package model.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCUtil {
   /*
   오라클 설정
   static final String driverName="oracle.jdbc.driver.OracleDriver";
   static final String url="jdbc:oracle:thin:@localhost:1521:xe";
   static final String user="kim";
   static final String passwd="1234";
   */
   // MySQL 설정
   static final String driverName="com.mysql.jdbc.Driver";
   static final String url="jdbc:mysql://localhost/leedb";
   static final String user="root";
   static final String passwd="1234";
   public static Connection connect() { // 연결
      Connection conn=null;
      try {
         Class.forName(driverName);
         conn=DriverManager.getConnection(url, user, passwd);
      } catch(Exception e) {
         e.printStackTrace();
      } finally {
         System.out.println("   로그: connect() 수행완료");
      }
      return conn;
   }
   public static void disconnect(Connection conn,PreparedStatement pstmt) { // 연결 해제
      try {
         pstmt.close();
         conn.close();
      } catch(Exception e) {
         e.printStackTrace();
      } finally {
         System.out.println("   로그: disconnect() 수행완료");
      }      
   }
   
   
   
   
   
   
   
   
   
   
   
   
   
}