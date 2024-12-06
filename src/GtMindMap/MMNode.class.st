Class {
	#name : #MMNode,
	#superclass : #Object,
	#instVars : [
		'parent'
	],
	#category : #'GtMindMap-Model'
}

{ #category : #'as yet unclassified' }
MMNode >> isRoot [
	^parent isNil
]

{ #category : #'as yet unclassified' }
MMNode >> parent [
	^parent
]
