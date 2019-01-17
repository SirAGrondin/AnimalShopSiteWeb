package fr.agrondin.objects;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

public interface PostNamesChecker {
	
	/**
	 * 
	 * @param request
	 * @param requiredNames
	 * @return
	 */
	public static boolean areNamesFoundInPostRequest(final HttpServletRequest request, final String[] requiredNames) {
		boolean allRequiredNameAreFound = false;
		Enumeration<String> namesInRequest = request.getParameterNames();
		
		while (namesInRequest.hasMoreElements()) {
			String foundName = (String) namesInRequest.nextElement();
			
			for (String requiredName : requiredNames) {
				if (requiredName.equalsIgnoreCase(foundName)) {
					allRequiredNameAreFound = true;
					break;
				}
			}
			if (!allRequiredNameAreFound) {
				return false;
			}
		}
		return allRequiredNameAreFound;
	}

}
