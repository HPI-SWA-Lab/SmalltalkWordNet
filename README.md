# SmalltalkWordNet  [![Build Status](https://travis-ci.org/hpi-swa/SmalltalkWordNet.svg)](https://travis-ci.org/hpi-swa/SmalltalkWordNet)
Provides an object representation of the wordnet database.

## Setup
To use the wordnet objects in your image you need to put the Prolog database serialization of
wordnet (https://wordnet.princeton.edu/wordnet/download/) in a 'wordnet' folder in the default image folder.

You can then load the data through:

````Smalltalk
WordNetDB install.
````

This will provide an instance you can access through ````WordNetDB current````.
