<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "org.sda.jsp.SMTPAuthenticator" %>

<%
    String result;

    // Recipient's email ID needs to be mentioned.
//    String to = "java4wro@gmail.com";
    String to = "piotrhor11@gmail.com";

    // Sender's email ID needs to be mentioned
//    String from = "mcmohd@gmail.com";
    String from = request.getParameter("emailAddress");         //Wstrzykujemy nowego adresata

    String host = "smtp.gmail.com";

    // Get system properties object
    Properties properties = System.getProperties();

    // Setup mail server
    properties.setProperty("mail.transport.protocol", "smtp");
    properties.setProperty("mail.smtp.host", host);
    properties.setProperty("mail.smtp.port", "587");
    properties.setProperty("mail.smtp.auth", "true");
    properties.setProperty("mail.smtp.starttls.enable", "true");


    // Get the default Session object.
    Authenticator auth = new SMTPAuthenticator();

    Session mailSession = Session.getDefaultInstance(properties, auth);

    try {
        // Create a default MimeMessage object.
        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.
        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.
        message.addRecipient(Message.RecipientType.TO,
                new InternetAddress(to));
        // Set Subject: header field
        message.setSubject("This is the Subject Line!");

        // Now set the actual message
        message.setText(request.getParameter("emailText"));             //Wstrzykujemy tekst wiadomości

        // Send message
        Transport.send(message);
        result = "Sent message successfully....";
    } catch (MessagingException mex) {
        mex.printStackTrace();
        result = "Error: unable to send message....";
    }

%>

<html>
<head>
    <title>Send Email using JSP</title>
</head>

<body>
<center>
    <h1>Send Email using JSP</h1>
</center>

<p align = "center">
    <%
        out.println("Result: " + result + "\n");
    %>
</p>
</body>
</html>