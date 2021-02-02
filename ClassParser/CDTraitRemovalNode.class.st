Class {
	#name : #CDTraitRemovalNode,
	#superclass : #CDTraitCompositionNode,
	#instVars : [
		'removals'
	],
	#category : #'ClassParser-Model'
}

{ #category : #accessing }
CDTraitRemovalNode >> isTraitRemovalNode [
	self sxhTouchAdd: 'By analogy with exclusion '.
	^ true
]

{ #category : #accessing }
CDTraitRemovalNode >> removals [

	^ removals
]

{ #category : #accessing }
CDTraitRemovalNode >> removals: anObject [

	removals := anObject
]

{ #category : #accessing }
CDTraitRemovalNode >> toString [
	"should replace removals"
	self sxhTouchAdd: 'By analogy with exclusion '.
	^ subject name ,' -- ', removals asString.
]
