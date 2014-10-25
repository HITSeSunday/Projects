package action;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport
{	
	private String password;
	public String login()
	{
		if(password.equals("mwq"))
		{
			System.out.println("success!");
			return SUCCESS;
		}
		else
		{
			this.addFieldError("name", "Wrong Password!");
			return ERROR;
		}
			
	}
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password=password;
	}
}
//first change01