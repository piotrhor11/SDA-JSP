package org.sda.jsp;

import javax.mail.PasswordAuthentication;

public class SMTPAuthenticator extends javax.mail.Authenticator {
    public PasswordAuthentication getPasswordAuthentication() {
        String username = "java3wro@gmail.com";
        String password = "javajavawro3";
        return new PasswordAuthentication(username, password);
    }
}
