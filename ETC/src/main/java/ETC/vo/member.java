package backweb.ETC.vo;
//backweb.ETC.vo.member
import java.util.Date;
public class member {
	 private String memid;
     private String mempwd;
     private String memgender;
     private String memname;
     private Date membirth;
     private String membirthStr;
     private String memaddress;
	public member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public String getMempwd() {
		return mempwd;
	}
	public void setMempwd(String mempwd) {
		this.mempwd = mempwd;
	}
	public String getMemgender() {
		return memgender;
	}
	public void setMemgender(String memgender) {
		this.memgender = memgender;
	}
	public String getMemname() {
		return memname;
	}
	public void setMemname(String memname) {
		this.memname = memname;
	}
	public Date getMembirth() {
		return membirth;
	}
	public void setMembirth(Date membirth) {
		this.membirth = membirth;
	}
	public String getMemaddress() {
		return memaddress;
	}
	public void setMemaddress(String memaddress) {
		this.memaddress = memaddress;
	}
	public String getMembirthStr() {
		return membirthStr;
	}
	public void setMembirthStr(String membirthStr) {
		this.membirthStr = membirthStr;
	}
	public member(String memid, String mempwd, String memgender, String memname, String membirthStr,
			String memaddress) {
		super();
		this.memid = memid;
		this.mempwd = mempwd;
		this.memgender = memgender;
		this.memname = memname;
		this.membirthStr = membirthStr;
		this.memaddress = memaddress;
	} 
	public member(String memid, String mempwd, String memgender, String memname, Date membirth, String memaddress) {
		super();
		this.memid = memid;
		this.mempwd = mempwd;
		this.memgender = memgender;
		this.memname = memname;
		this.membirth = membirth;
		this.memaddress = memaddress;
	}
   
	
}
