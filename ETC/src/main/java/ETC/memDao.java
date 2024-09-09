package ETC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ETC.a04_database.DBconJ.DBconJ;
import ETC.vo.member;
 //backweb.ETC.memDao
public class memDao {
		 
		 public int insertMem(member ins){ //조작
				// 1. 조회하여 결과를 리턴할 객체를 선언한다.
				//(select문에 의한 결과값을 리턴할 내용)
				int insCnt  = 0;
				
				// 2. 사용되는 sql 구문을 처리한다.
				String sql = "INSERT INTO meminfo \r\n"
						    +"values(?, ?, ?, ?, to_date(?, 'YYYY-MM-DD'), ?)";
				
				// 3. 본격적으로 연결/대화/결과/자원해제 예외처리.
				//    매개변수로 처리할 때 자원해제 처리된다.
				Connection con2 = null;
				
				try( //Connection con = DBConn.con();
					 Connection con = DBconJ.getConnection();	
					 PreparedStatement pstmt = con.prepareStatement(sql); ){
					 con2 = con;
					 con.setAutoCommit(false); // auto commit 방지
				     pstmt.setString(1, ins.getMemid());
				     pstmt.setString(2, ins.getMempwd());
				     pstmt.setString(3, ins.getMemgender());
				     pstmt.setString(4, ins.getMemname());
				     pstmt.setString(5, ins.getMembirthStr());
				     pstmt.setString(6, ins.getMemaddress());
					 insCnt = pstmt.executeUpdate();
				
					if (insCnt > 0) { //데이터 등록 <= 리턴
						System.out.println(insCnt + "건 등록에 성공하였습니다!");
						con.commit();
						
					}

				} catch (SQLException e) {
					System.out.println("DB 처리 에러:" + e.getMessage());
					if (con2 != null) {
						try {
							con2.rollback();
						} catch (SQLException e1) {
							System.out.println("롤백 예외");
						}
					}
				} catch (Exception e) {
					System.out.println("일반 에러:" + e.getMessage());
				  }
							
				return insCnt;
			}
		 
		 public boolean loginUser(String memid, String mempwd) {
		        String sql = "SELECT * FROM meminfo\n"
		        		   + "WHERE memid = ? AND mempwd = ? ";
		        try (Connection conn = DBconJ.getConnection();
		             PreparedStatement stmt = conn.prepareStatement(sql)) {
		            stmt.setString(1, memid);
		            stmt.setString(2, mempwd);
		            ResultSet rs = stmt.executeQuery();
		            
		            return rs.next();
		        } catch (SQLException e) {
		            e.printStackTrace();
		            return false;
		        }

          }
    	  
      }

