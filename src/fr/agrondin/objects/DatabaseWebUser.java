package fr.agrondin.objects;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

public final class DatabaseWebUser {

	private static ArrayList<WebUser> accounts = new ArrayList<WebUser>(
			Arrays.asList(new WebUser("Administrateur", "admin@localhost.fr", "Admdp", Role.ADMIN)));

	public static final boolean register(final String pseudo, final String email, final String password) {
		
		if (!exists(pseudo, email)) {
			WebUser newUser = new WebUser();
			
			newUser.setPseudo(pseudo);
			newUser.setEmail(email);
			newUser.setPassword(password);
			
			accounts.add(newUser);
			return true;
		}
		return false;
	}
	
	public static final boolean update(final String pseudo, final String newEmail, final String newPassword) {
		WebUser updated = new WebUser();
		updated = selectByPseudoOrEmail(pseudo);
		updated.setEmail(newEmail);
		updated.setPassword(newPassword);
		Iterator<WebUser> webUserIterator = accounts.iterator();
		while(webUserIterator.hasNext()) {
			WebUser user = webUserIterator.next();
				if (user.getPseudo().equals(pseudo)) {
					user.setEmail(newEmail);
					user.setPassword(newPassword);
					return true;
				}
		}
		
		return false;
	}

	public static final boolean delete(final WebUser user) {
		if (exists(user)) {
			DatabaseWebUser.accounts.remove(user);
			return true;
		}
		return false;
	}
	
	public static final boolean delete(final int index) {
		if (index <= DatabaseWebUser.accounts.size() -1) {
			DatabaseWebUser.accounts.remove(index);
		}
		return false;
	}

	public static final boolean exists(final String userName, final String email) {
		if (existsPseudo(userName) && existsEmail(email)) {
			return true;
		}
		return false;
	}
	
	public static final boolean exists(final WebUser user) {
		for (WebUser webUser : DatabaseWebUser.accounts) {
			if (webUser.equals(user)) {
				return true;
			}
		}
		return false;
	}

	public static final boolean existsPseudo(final String peuso) {
		for (WebUser webUser : DatabaseWebUser.accounts) {
			if (webUser.getPseudo().equalsIgnoreCase(peuso)) {
				return true;
			}
		}
		return false;
	}
	
	public static final boolean existsEmail(final String email) {
		for (WebUser webUser : DatabaseWebUser.accounts) {
			if (webUser.getEmail().equalsIgnoreCase(email)) {
				return true;
			}
		}
		return false;
	}
	
	public static final WebUser get(final int index) {
		if (index <= DatabaseWebUser.accounts.size() -1) {
			return DatabaseWebUser.accounts.get(index);
		}
		return null;
	}
	
	public static final WebUser get(final String pseudo, final String email) {
		for (WebUser webUser : DatabaseWebUser.accounts) {
			if (webUser.getPseudo().equalsIgnoreCase(pseudo)) {
				if (webUser.getEmail().equalsIgnoreCase(email)) {
					return webUser;
				}
			}
		}
		return null;
	}
	
	public static final WebUser get(final String pseudo, final String email, final String password) {
		for (WebUser webUser : DatabaseWebUser.accounts) {
			if (webUser.getPseudo().equalsIgnoreCase(pseudo)) {
				if (webUser.getEmail().equalsIgnoreCase(email)) {
					if (webUser.getPassword().equals(password)) {
						return webUser;
					}
				}
			}
		}
		return null;
	}
	
	public static final WebUser selectByPseudoOrEmail(final String username) {
		for (WebUser webUser : DatabaseWebUser.accounts) {
			if (webUser.getPseudo().equalsIgnoreCase(username)) {
				return webUser;
			}
			if (webUser.getEmail().equalsIgnoreCase(username)) {
					return webUser;
			}
		}
		return null;
	}
	
}
