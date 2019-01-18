package fr.agrondin.objects;

public enum LoginPostName {
	USERNAME("username"),
	PASSWORD("password"),
	STAYCO("stayco"),
	EMAIL("email");

	private String name;
	
	public final String getName() {
		return this.name;
	}
	
	private LoginPostName(final String name) {
		this.name = name;
	}
}
