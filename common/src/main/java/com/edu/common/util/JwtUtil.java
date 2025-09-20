package com.edu.common.util;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.edu.common.core.EduException;
import com.edu.common.entity.User;

import java.util.Date;

public class JwtUtil {
    private static final String KEY = "dongruan";
    public static String create(User user) {
        return JWT.create()
                .withClaim("id", user.getId())
                .withClaim("name", user.getName())
                .withClaim("time", new Date())
                .sign(Algorithm.HMAC256(KEY));
    }
    public static long decode(String jwt) throws EduException {
        try {
            return JWT.require(Algorithm.HMAC256(KEY))
                    .build()
                    .verify(jwt)
                    .getClaim("id").asLong();
        } catch (Exception ex) {
            ex.printStackTrace();
            throw new EduException("非法请求");
        }
    }
}
