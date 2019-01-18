package fr.agrondin.objects;

public enum LoginPostName {
	USERNAME("username"),
	PASSWORD("password"),
	PASSWORDBIS("passwordbis"),
	EMAIL("email"),
	STAYCO("stayco");
	private String name;
	
	public final String getName() {
		return this.name;
	}
	

	
	private LoginPostName(final String name) {
		this.name = name;
	}
}
