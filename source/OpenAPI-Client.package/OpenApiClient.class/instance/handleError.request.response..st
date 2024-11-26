error handling
handleError: aResponseContent request: aRequest response: aResponse

	(OAUnspecifiedError new
		 contents: aResponseContent;
		 response: aResponse) signal