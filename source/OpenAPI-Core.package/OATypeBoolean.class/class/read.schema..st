reading-primitive data
read: aBoolean schema: schema
	(aBoolean isKindOf: Boolean) ifFalse: [  
		^ OATypeError signal: 'not a boolean' ].
	^ aBoolean
	