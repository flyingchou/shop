package cn.edu.nuc.shop.entiry;

public class Admin {
    private Integer aid;

    private String username;

    private String password;

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
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

	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", username=" + username + ", password=" + password + "]";
	}
    
}