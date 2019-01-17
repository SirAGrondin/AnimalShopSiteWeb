package fr.agrondin.objects;

public enum LoginPostName {
	USERNAME("username"),
	PASSWORD("password"),
<<<<<<< HEAD
	STAYCO("stayco"),
	EMAIL("email");
	
=======
	EMAIL("email"),
	STAYCO("stayco");

>>>>>>> 0f06e41d2d4987a1582c492db5857d5976288582
	private String name;
	
	public final String getName() {
		return this.name;
	}
	
	private LoginPostName(final String name) {
		this.name = name;
	}
}
