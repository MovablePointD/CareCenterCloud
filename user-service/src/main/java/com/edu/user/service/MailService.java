package com.edu.user.service;

import javax.mail.MessagingException;

public interface MailService {
    void send(String to, String subject, String text) throws MessagingException;


}
