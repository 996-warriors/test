package productList;

import java.util.ArrayList;
import java.util.List;

public class Product {
	private String ID;
	private String Descrption;
	private String type;
	private String Name;
	private int number;
	private String picturepath;
	public String getID()
	{
		return ID;
	}
	public void setID(String ID)
	{
		this.ID = ID;
	}
	public String getDescrption()
	{
		return Descrption;
	}
	public void setDescrption(String Descrption)
	{
		this.Descrption = Descrption;
	}
	public String getType()
	{
		return type;
	}
	public void setType(String type)
	{
		this.type = type;
	}
	public String getName()
	{
		return Name;
	}
	public void setName(String Name)
	{
		this.Name = Name;
	}
	public int getNumber()
	{
		return number;
	}
	public void setNumber(int number)
	{
		this.number = number;
	}
	public String getPicturepath()
	{
		return picturepath;
	}
	public void setPicturepath(String picturepath)
	{
		this.picturepath = picturepath;
	}
	public List<Product> list = new ArrayList<Product>();

}
