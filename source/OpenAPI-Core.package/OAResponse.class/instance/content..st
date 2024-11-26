accessing
content: aDictionary

	aDictionary ifNotNil: [
		| newDictionary |
		newDictionary := Dictionary new.
		aDictionary keysAndValuesDo: [ :key :value |
			| mimeTypeOnly |
			mimeTypeOnly := (ZnMimeType fromString: key) clearCharSet.
			newDictionary add: mimeTypeOnly asString asLowercase -> value ].
		newDictionary values do: [ :each | each response: self ].
		content := newDictionary ]