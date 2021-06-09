package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.ArrayList;
public class BbsDAO {

	private Connection conn;
	private ResultSet rs;
	
	//�⺻ ������
	public BbsDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/logindata?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String getDate() //�Խ��ǿ� ���� �ۼ��� �� ������ �ð��� �������� �Լ�
	{
		String SQL = "SELECT NOW()"; //������ �ð��� �������� MySQL ����
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return rs.getString(1); //������ �ð� ��ȯ
			}
				
		} catch(Exception e) {
			e.printStackTrace();
		}
		return ""; //�����ӵ��̽� ����
	}
	
	public int getNext() // �Խñ� ��ȣ �Է� �Լ�
	{
		String SQL = "SELECT bbsID FROM bbs ORDER BY bbsID DESC"; 
		//�Խñ� ��ȣ�� 1������ 2��, 3, 4, ...�ö󰡼� �������� ��ȣ�� �����ͼ� +1���ش�.
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return rs.getInt(1) + 1; //�������� �Խñ� ��ȣ���� +1���ش�.
			} 
			return 1; //ù��° �Խù��� ���
				
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ����
	}
	
	public int write(String bbsTitle, String userID, String bbsContent) //���� ���� �ۼ��ϴ� �Լ�
	{
		String SQL = "INSERT INTO bbs VALUE (?, ?, ?, ?, ?, ?)"; 
		//SQL�� ���ִ� ����
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext()); //bbsID
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, bbsContent);
			pstmt.setInt(6, 1); //ó�� �������»��� => 1		
			return pstmt.executeUpdate();
				
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ӵ��̽� ����
	}
	
	public ArrayList<Bbs> getList(int pageNumber) //import java.util.ArrayList;
	{
		String SQL = "SELECT * FROM bbs WHERE bbsID <? AND bbsAvailable ='1' ORDER BY bbsID DESC LIMIT 10"; 
		//bbsID�� Ư�����Ǻ��� ������, Available=1 (������ ���� �ʰ�), 10������ �����ؼ� ��Ÿ��
		
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			/*getNext = ������ �ۼ��� ���ǹ�ȣ, ���� 2page, 15���̶��  15 - (2-1)*10 =5, �� 2page 1, 2, 3, 4 �� 4���� ���� ��Ÿ�� 
			���� 1page, 6���̶�� 6 - (1-1)*10 = 6, �� 1page 1, 2, 3, 4 ,5 �� 5���� ���� ��Ÿ�� */
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) { //���� �����ҵ���,
				Bbs bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
			    list.add(bbs);
			} 		
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean nextPage(int pageNumber) //����¡ ó��
	{
		String SQL = "SELECT * FROM bbs WHERE bbsID <? AND bbsAvailable='1' ORDER BY bbsID DESC LIMIT 10"; 
		//bbsID�� Ư�����Ǻ��� ������, Available=1 (������ ���� �ʰ�), 10������ �����ؼ� ��Ÿ��
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			/*getNext = ������ �ۼ��� ���ǹ�ȣ, ���� 2page, 15���̶��  15 - (2-1)*10 =5, �� 2page 1, 2, 3, 4 �� 4���� ���� ��Ÿ�� 
			���� 1page, 6���̶�� 6 - (1-1)*10 = 6, �� 1page 1, 2, 3, 4 ,5 �� 5���� ���� ��Ÿ�� */
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //���� �����ҵ���,
				return true;
			} 		
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public Bbs getBbs(int bbsID) {
		String sql = "select * from bbs where bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bbsID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				return bbs;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public int update(int bbsID, String bbsTitle, String bbsContent) {
		String sql = "update bbs set bbsTitle = ?, bbsContent = ? where bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bbsTitle);
			pstmt.setString(2, bbsContent);
			pstmt.setInt(3, bbsID);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ����
	}
	
	//�Խñ� ���� �޼ҵ�
	public int delete(int bbsID) {
		//���� �����͸� �����ϴ� ���� �ƴ϶� �Խñ� ��ȿ���ڸ� '0'���� �����Ѵ�
		String sql = "update bbs set bbsAvailable = 0 where bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bbsID);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ���� 
	}

}