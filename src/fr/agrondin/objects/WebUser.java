package fr.agrondin.objects;

public final class WebUser {

	private static int totalWebUserCreated = 0;
	
	private long id;
	private String pseudo;
	private String email;
	private String password;
	private Role role;
	
	public final long getId() {
		return id;
	}

	public final void setId(long id) {
		this.id = id;
	}

	public final String getPseudo() {
		return pseudo;
	}

	public final void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}

	public final String getEmail() {
		return email;
	}

	public final void setEmail(String email) {
		this.email = email;
	}

	public final String getPassword() {
		return password;
	}

	public final void setPassword(String password) {
		this.password = password;
	}

	public final Role getRole() {
		return role;
	}

	public final void setRole(Role role) {
		this.role = role;
	}

	public WebUser() {
		super();
	}

	public WebUser(String pseudo, String email, String password, Role role) {
		super();
		totalWebUserCreated++;
		this.id = totalWebUserCreated;
		this.pseudo = pseudo;
		this.email = email;
		this.password = password;
		this.role = role;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + (int) (id ^ (id >>> 32));
		result = prime * result + ((pseudo == null) ? 0 : pseudo.hashCode());
		result = prime * result + ((role == null) ? 0 : role.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		WebUser other = (WebUser) obj;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (id != other.id)
			return false;
		if (pseudo == null) {
			if (other.pseudo != null)
				return false;
		} else if (!pseudo.equals(other.pseudo))
			return false;
		return true;
	}
	
	

}
