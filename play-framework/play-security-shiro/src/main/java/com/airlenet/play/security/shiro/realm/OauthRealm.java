package com.airlenet.play.security.shiro.realm;

import com.airlenet.play.security.CustomUserDetails;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.airlenet.play.security.shiro.PlayShiroUserDetailsService;
import com.airlenet.play.security.shiro.authc.PlayPluginOauthToken;

public class OauthRealm extends PlayRealm {
	@Autowired
	private PlayShiroUserDetailsService userService;

	public OauthRealm() {
		super();
		setAuthenticationTokenClass(PlayPluginOauthToken.class);
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		CustomUserDetails<?, ?> userDetails = (CustomUserDetails<?, ?>) token.getPrincipal();
		// new SimpleAuthenticationInfo();
		return new SimpleAuthenticationInfo(userDetails, // 用户名
				userDetails.getPassword(), // 密码
				ByteSource.Util.bytes(userDetails.getCredentialsSalt()),// salt=username+salt
				userDetails.getNickname() // realm name
		);
	}
}
