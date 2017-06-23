package cn.edu.nuc.shop.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.github.pagehelper.PageInfo;
import com.github.pagehelper.PageHelper;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.nuc.shop.entiry.Product;
import cn.edu.nuc.shop.service.interfaces.ProductService;
import cn.edu.nuc.shop.util.IPTimeStamp;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;

	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String listProduct(Model model){

		List<Product> list = productService.listProduct();
		model.addAttribute("list", list);

		return "product/list";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String toAddProduct(){
		
		return "product/add";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String AddProduct(Product product, @RequestParam("file") MultipartFile file,
			HttpServletRequest request) throws IOException {

			System.out.println(product);
			//获取文件 存储位置
			String realPath = request.getSession().getServletContext()
					.getRealPath("/upload");
			File pathFile = new File(realPath);
			
			if (!pathFile.exists()) {
				//文件夹不存 创建文件
				pathFile.mkdirs();
			}
				
				System.out.println("文件类型："+file.getContentType());
				System.out.println("文件名称："+file.getOriginalFilename());
				System.out.println("文件大小:"+file.getSize());
				System.out.println(".................................................");

				
				IPTimeStamp ip = new IPTimeStamp();
				
				System.out.println(ip.getTimeStamp());
				
				String ext =FilenameUtils.getExtension(file.getOriginalFilename());
				
				String newfilename= ip.getTimeStamp() + "."+ ext;
				
				FileUtils.copyInputStreamToFile(file.getInputStream(), 
						new File(realPath, newfilename));
			//获取modelandview对象
		
		product.setPic(newfilename);
		
		productService.addProduct(product);

		return "redirect:list";
	}

	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String deleteProduct(Product product){
		
		productService.deleteProduct(product);
		
		return "redirect:list";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String toedit(Product product,ModelMap map){
		
		Product pro = productService.findById(product.getPid());
		
		map.addAttribute("product", pro);

		return "product/edit";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(Product product, @RequestParam("file") MultipartFile file,
			HttpServletRequest request) throws IOException{

		Product oldproduct = productService.findById(product.getPid());
		//获取文件 存储位置
		if(file.getOriginalFilename()!=null && !file.getOriginalFilename().equals("")){
			String realPath = request.getSession().getServletContext()
					.getRealPath("/upload");
			
			File oldfile = new File(realPath +"/"+ oldproduct.getPic());
			oldfile.delete();
			
			File pathFile = new File(realPath);
			
			if (!pathFile.exists()) {
				//文件夹不存 创建文件
				pathFile.mkdirs();
			}
				System.out.println("文件类型："+file.getContentType());
				System.out.println("文件名称："+file.getOriginalFilename());
				System.out.println("文件大小:"+file.getSize());
				System.out.println(".................................................");
				//将文件copy上传到服务器
				//file.transferTo(new File(realPath + "/" + file.getOriginalFilename()));
				
				IPTimeStamp ip = new IPTimeStamp();
				String ext =FilenameUtils.getExtension(file.getOriginalFilename());
				
				String newfilename= ip.getTimeStamp() + "."+ ext;

				FileUtils.copyInputStreamToFile(file.getInputStream(), 
						new File(realPath, newfilename));
			//获取modelandview对象
				
				product.setPic(newfilename);
		}	
		
		if(file.getOriginalFilename()==null || "".equals(file.getOriginalFilename())){
		  product.setPic(productService.findById(product.getPid()).getPic());
		}
		productService.updateProduct(product);
		
		return "redirect:list";
	}
	
	@RequestMapping(value="/find",method=RequestMethod.POST)
	public String findByPname(@Param("pname") String pname,Model model){
		
		System.out.println(pname+"---------------------------");
		
		List<Product> li = productService.findByName(pname);
		
		model.addAttribute("list", li);
		
		return "product/list";
	}
	
	//前台，商品分页
    @RequestMapping(value ="/frontlist",method = RequestMethod.GET)
	public String pagelist(Integer pageNum, Integer pageSize, HttpSession session){
        PageHelper.startPage(pageNum == null ? 1 : pageNum, pageSize == null ? 5 : pageSize);
        List<Product> list = productService.listProduct();//list方法调用
        PageInfo<Product> pages = new PageInfo<Product>(list);
		session.setAttribute("pages",pages);

		return "forward:/index.jsp";
	}

	
	//前台，商品详情页
		@RequestMapping(value="/detail",method=RequestMethod.GET)
		public String detail(Product product,Model model){
			
			Product pro = productService.findById(product.getPid());
			
			model.addAttribute("product", pro);
			
			return "forward:/detail.jsp";
		}
}
