package cn.edu.nuc.shop.entiry;

public class User {
    private Integer uid;

    private String username;

    private String password;

    private String realname;

    private String email;

    private String phone;

    private String addr;

    public Integer getUid() {
        return uid;
    }
    

    public User() {
		super();
	}
    


	public User(Integer uid, String username, String password, String realname, String email, String phone,
			String addr) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.realname = realname;
		this.email = email;
		this.phone = phone;
		this.addr = addr;
	}

	public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr == null ? null : addr.trim();
    }
}