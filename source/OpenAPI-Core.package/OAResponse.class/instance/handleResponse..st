as yet unclassified
handleResponse: aResponse

	| contentTypeString |
	(content isNil or: [ content isEmpty ]) ifTrue: [
		^ aResponse contents ].
	contentTypeString := aResponse contentType clearCharSet asString
		                     asLowercase.
	^ content
		  at: contentTypeString
		  ifPresent: [ :mediaObject |
		  mediaObject handleResponse: aResponse contents ]
		  ifAbsent: [
			  OAUnspecifiedError new
				  response: aResponse;
				  messageText: 'cannot find object for media ' , contentTypeString ]