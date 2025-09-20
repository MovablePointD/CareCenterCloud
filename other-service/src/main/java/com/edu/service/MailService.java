package com.edu.service;

import javax.mail.MessagingException;

public interface MailService {
    void send(String to, String subject, String text) throws MessagingException;


}
