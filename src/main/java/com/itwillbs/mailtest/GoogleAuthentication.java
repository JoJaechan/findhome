package com.itwillbs.mailtest;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class GoogleAuthentication extends Authenticator{
	PasswordAuthentication passAuth;
	public GoogleAuthentication() {
		
passAuth=new PasswordAuthentication("tcandyman423", "fyfonixfdahmjxzg");
	}
	
	
	
public PasswordAuthentication getPasswordAuthentication() {
	return passAuth;
	
}


}

