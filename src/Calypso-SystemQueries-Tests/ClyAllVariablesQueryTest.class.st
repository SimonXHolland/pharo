Class {
	#name : #ClyAllVariablesQueryTest,
	#superclass : #ClyVariableQueryTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #running }
ClyAllVariablesQueryTest >> createQuery [
	^ClyAllVariablesQuery from: ClyClassScope of: ClyClass2FromP1 in: environment
]

{ #category : #tests }
ClyAllVariablesQueryTest >> testCheckIfEmpty [
	query scope: (ClyClassScope of: ClyClass2FromP1 in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyClassScope of: ProtoObject in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyAllVariablesQueryTest >> testFromSingleClass [

	| varNames |
	self queryFromScope: ClyClassScope of: ClyClass2FromP1.
	
	varNames := resultItems collect: [:each | each name] as: Set.
	self 
		assert: varNames 
		equals: ClyClass2FromP1 instVarNames asSet, (ClyClass2FromP1 classVariables collect: [:each | each name])
]
