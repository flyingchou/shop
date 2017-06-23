package cn.edu.nuc.shop.entiry;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public class Product {
//     long total;//总数
//    List<Product> list;
//    int pageNum;//第几页
//    int pageSize;//每一页数量
//    int pages;//总页数
//    int size;//当前页的数量
//
//    public Product(List<Product> list){
//        if (list instanceof Page){
//            Page<Product> page = (Page<Product> )list;
//            this.pageNum = page.getPageNum();
//            this.pageSize = page.getPageSize();
//            this.total = page.getTotal();
//            this.pages = page.getPages();
//            this.list = page;
//            this.size = page.size();
//        }
//    }
//    public long getTotal() {
//        return total;
//    }
//    public void setTotal(long total) {
//        this.total = total;
//    }
//    public List<Product> getList() {
//        return list;
//    }
//
//    public void setList(List<Product> list) {
//        this.list = list;
//    }
//    public int getSize() {
//        return size;
//    }
//    public void setSize(int size) {
//        this.size = size;
//    }
//    public int getPageNum() {
//        return pageNum;
//    }
//    public void setPageNum(int pageNum) {
//        this.pageNum = pageNum;
//    }
//    public int getPageSize() {
//        return pageSize;
//    }
//
//    public void setPageSize(int pageSize) {
//        this.pageSize = pageSize;
//    }
//    public int getPages() {
//        return pages;
//    }
//    public void setPages(int pages) {
//        this.pages = pages;
//    }

    private Integer pid;

    private String pname;

    private double sprice;

    private double cprice;

    private String pic;

    private String pdesc;

    private Boolean isHot;
    
    private Date pdate;
    
    private int number;

    public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc == null ? null : pdesc.trim();
    }


    public Boolean getIsHot() {
		return isHot;
	}

	public void setIsHot(Boolean isHot) {
		this.isHot = isHot;
	}

	public Date getPdate() {
        return pdate;
    }

    public void setPdate(Date pdate) {
        this.pdate = pdate;
    }
    
	public double getSprice() {
		return sprice;
	}

	public void setSprice(double sprice) {
		this.sprice = sprice;
	}

	public double getCprice() {
		return cprice;
	}

	public void setCprice(double cprice) {
		this.cprice = cprice;
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", sprice=" + sprice + ", cprice=" + cprice + ", pic=" + pic
				+ ", pdesc=" + pdesc + ", isHot=" + isHot + ", pdate=" + pdate + "]\n";
	}
    
}