package com.bolsadeideas.springboot.app.auth.service;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;

import javax.crypto.spec.SecretKeySpec;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;
import org.springframework.util.Base64Utils;

import com.bolsadeideas.springboot.app.auth.SimpleGrantedAuthorityMixin;
import com.fasterxml.jackson.databind.ObjectMapper;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@Service
public class JWTServiceImpl implements JWTService {
	
	public static final SecretKeySpec SECRET_KEY = new SecretKeySpec(Base64Utils.encodeToString("algunaLlaveSecreta.masfuerte.12345".getBytes()).getBytes(), SignatureAlgorithm.HS256.getJcaName());
	public static final long EXPIRATION_DATE = 14000000L; 
	public static final String TOKEN_PREFIX = "Bearer ";
	public static final String HEADER_STRING = "Authorization";

	@Override
	public String create(Authentication auth) throws IOException {
		
		String username = auth.getName();
		Collection<? extends GrantedAuthority> roles = auth.getAuthorities();
		
		Claims claims = Jwts.claims();
		claims.put("authorities", new ObjectMapper().writeValueAsString(roles));
		
        String token = Jwts.builder()
        				.setClaims(claims)
                        .setSubject(username)
                        .signWith(SECRET_KEY)
                        .setIssuedAt(new Date())
                        .setExpiration(new Date(System.currentTimeMillis() + EXPIRATION_DATE))
                        .compact();
		
		return token;
	}

	@Override
	public boolean validate(String token) {
		
		try {
			getClaims(token);
			return true;
		} catch (JwtException | IllegalArgumentException e) {
			return false;
		}
	
	}

	@Override
	public Claims getClaims(String token) {
		
		Claims claims = Jwts.parser()
				.setSigningKey(SECRET_KEY)
				.parseClaimsJws(resolve(token))
				.getBody();
		
		return claims;
		
	}

	@Override
	public String getUsername(String token) {
		return getClaims(token).getSubject();
	}

	@Override
	public Collection<? extends GrantedAuthority> getRoles(String token) throws IOException {
		
		Object roles = getClaims(token).get("authorities");
		Collection<? extends GrantedAuthority> authorities = Arrays.asList(new ObjectMapper()
				.addMixIn(SimpleGrantedAuthority.class, SimpleGrantedAuthorityMixin.class)
				.readValue(roles.toString().getBytes(), SimpleGrantedAuthority[].class));
		
		return authorities;
		
	}

	@Override
	public String resolve(String token) {
		
		if (null != token && token.startsWith(TOKEN_PREFIX))
			return token.replace(TOKEN_PREFIX, "");
		else
			return null;
		
	}

}
