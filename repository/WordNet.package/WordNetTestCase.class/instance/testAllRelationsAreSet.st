as yet unclassified
testAllRelationsAreSet

	#(entailments entailmentOf 
		hypernyms hyponyms 
		instances instanceOf 
		similarAdjectives similarTo 
		memberHolonymOf memberMeronyms 
		substanceHolonymOf substanceMeronyms 
		partHolonymOf partMeronyms
		glossary 
		causeOf causedBy
		attributeAdjectives attributeOfNouns) 
			do: [:relation |
				self assert: (self synsets anySatisfy: [:s | (s perform: relation) isEmptyOrNil not])]