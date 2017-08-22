package com.airshiplay.play.main.entity;

import com.airlenet.play.repo.jpa.DataEntity;
import com.airlenet.play.repo.domain.Lockedable;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "sys_role")
public class RoleEntity extends DataEntity<AdminUserEntity, Long> implements
		Lockedable {

	private static final long serialVersionUID = 5364423002312524895L;

	@NotNull
	@Size(min = 1, max = 50)
	@Column(nullable = false, length = 100)
	private String name;

	@NotNull
	@Size(min = 1, max = 50)
	@Column(nullable = false, length = 50,unique=true)	
	private String code;

	private boolean locked = false;

	@ManyToMany(mappedBy = "roles", fetch = FetchType.LAZY)
	private Set<AdminUserEntity> users = new HashSet<>();

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "sys_role_menu", joinColumns = @JoinColumn(name = "role_id"), inverseJoinColumns = @JoinColumn(name = "menu_id"))
	@OrderBy("sortNo asc")
	private Set<MenuEntity> menus = new HashSet<>();

//	@ElementCollection
//	@CollectionTable(name = "sys_role_authority", joinColumns = @JoinColumn(name = "role_id"))
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "sys_role_authority", joinColumns = @JoinColumn(name = "role_id"), inverseJoinColumns = @JoinColumn(name = "authority_id"))
	@OrderBy("sortNo asc")
	private List<AuthorityEntity> authorities = new ArrayList<AuthorityEntity>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Set<MenuEntity> getMenus() {
		return menus;
	}

	public Set<AdminUserEntity> getUsers() {
		return users;
	}

	public void setUsers(Set<AdminUserEntity> users) {
		this.users = users;
	}

	public void setMenus(Set<MenuEntity> menus) {
		this.menus = menus;
	}

	public List<AuthorityEntity> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(List<AuthorityEntity> authorities) {
		this.authorities = authorities;
	}

	@Override
	public boolean isLocked() {
		return locked;
	}

	@Override
	public void setLocked(boolean locked) {
		this.locked = locked;
	}

	@Override
	public void markLocked() {
		locked = true;
	}

}