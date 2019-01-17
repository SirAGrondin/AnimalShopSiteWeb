package fr.agrondin.objects;

public enum Role {
	ADMIN(1, "ADMIN"),
	USER(0, "USER");
	
	private int id;
	private String name;
	
	public final int getId() {
		return id;
	}

	public final String getName() {
		return name;
	}

	private Role(int id, String name) {
		this.id = id;
		this.name = name;
	}

	public static Role findById(final int id) {
		for (Role role : Role.values()) {
			if (id == role.id) return role;
		}
		return null;
	}

	public static Role findByName(final String name) {
		for (Role role : Role.values()) {
			if (name.equalsIgnoreCase(role.name)) return role;
		}
		return null;
	}
	
}
