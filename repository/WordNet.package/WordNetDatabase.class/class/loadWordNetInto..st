as yet unclassified
loadWordNetInto: database

	"This script loads WordNet and assumes that the Prolog database export is in the image folder in a folder named 'wordnet'.
	The script only loads the synset and glossary data sets."
	
	| wordNetRootDirectory filesInLoadOrder statements |
	wordNetRootDirectory := FileDirectory default / 'wordnet'.
	
	filesInLoadOrder := {'wn_s.pl' . 'wn_g.pl'}.
	
	filesInLoadOrder do: [:fileName |
		statements := Set new.
		wordNetRootDirectory readOnlyFileNamed: fileName do: [:strm | 
			statements := WordNetParser new parseStream: strm.].
		statements do: [:stmt | stmt interpretIn: database]].