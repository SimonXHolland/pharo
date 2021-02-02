"
Missing class added in exploratory debugging of stateful traits renaming

Going by analogy with 

CDTraitAliasNode, the following two instance ariables look useful: 

	slots: { #renames. #newName }
	classVariables: {  }
	package: 'ClassParser-Model'
	
Where #renames is the whole array of all the #renames, and this node deals with just one 
of them.
"
Class {
	#name : #CDTraitRenameNode,
	#superclass : #CDTraitCompositionNode,
	#instVars : [
		'renames',
		'newName'
	],
	#category : #'ClassParser-Model'
}

{ #category : #testing }
CDTraitRenameNode >> isTraitRenameNode [
	 self sxhTouchAdd: 'By loose analogy with aliasing'.
	^ true
]

{ #category : #accessing }
CDTraitRenameNode >> newName [

	^ newName
]

{ #category : #accessing }
CDTraitRenameNode >> newName: anObject [

	newName := anObject
]

{ #category : #accessing }
CDTraitRenameNode >> renames [

	^ renames
]

{ #category : #accessing }
CDTraitRenameNode >> renames: anObject [

	renames := anObject
]

{ #category : #printing }
CDTraitRenameNode >> toString [
	 self sxhTouchAdd: 'By loose analogy with aliasing'.
	"from analogy with method aliasing - note reverse ordering from aliases, as used in Tesone 2020"

	^ subject name , ' -> ' , newName
]
