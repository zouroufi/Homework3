package homework3final;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {

	@Id
	//@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="pbar")
	private int pbar; 
	
	@Column(name="pname", nullable = false, length = 50)
	private String pname; 
	
	@Column(name="pcolor", nullable = false, length = 50)
	private String pcolor; 
	
	@Column(name="pdesc", nullable = false, length = 100)
	private String pdesc;

	public Product() {
		super();
	}

	public Product(int pbar, String pname, String pcolor, String pdesc) {
		super();
		this.pbar = pbar;
		this.pname = pname;
		this.pcolor = pcolor;
		this.pdesc = pdesc;
	}

	public int getBarcode() {
		return pbar;
	}

	public void setBarcode(int pbar) {
		this.pbar = pbar;
	}

	public String getName() {
		return pname;
	}

	public void setName(String pname) {
		this.pname = pname;
	}

	public String getColor() {
		return pcolor;
	}

	public void setColor(String pcolor) {
		this.pcolor = pcolor;
	}

	public String getDescription() {
		return pdesc;
	}

	public void setDescription(String pdesc) {
		this.pdesc = pdesc;
	}
}