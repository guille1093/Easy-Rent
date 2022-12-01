package com.unam.poo.services.SpringMailSender;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

@Service
public class MailSenderService {

        @Value("${mail.smtp.password}")
        String password;

        @Value("${mail.smtp.username}")
        String fromInternetAdress;

        public void sendCustomMail(String toInternetAdress, String subject, String body) {

                System.out.println(password);
                System.out.println(fromInternetAdress);
                Properties props = new Properties();
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");
                props.put("mail.debug", "true");
                props.put("mail.smtp.protocol", "smtp");
                props.put("mail.smtp.mail.from", fromInternetAdress);
                props.put("mail.smtp.username", fromInternetAdress);
                props.put("mail.smtp.password", password);
                props.put("user", fromInternetAdress);
                props.put("password", password);
                props.put("java.net.preferIPv4Stack", "true");

                Authenticator auth = new Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(fromInternetAdress, password);
                        }
                };

                Session session = Session.getInstance(props, auth);

                try {
                        MimeMessage msg = new MimeMessage(session);
                        msg.setFrom(new InternetAddress(fromInternetAdress));
                        InternetAddress[] address = { new InternetAddress(toInternetAdress) };
                        msg.setRecipients(Message.RecipientType.TO, address);
                        msg.setSubject(subject);
                        msg.addHeader("x-cloudmta-class", "standard");
                        msg.addHeader("x-cloudmta-tags", "demo, example");
                        msg.setText(body);

                        Transport.send(msg);

                        System.out.println("Message Sent.");
                } catch (MessagingException ex) {
                        throw new RuntimeException(ex);
                }

        }
}