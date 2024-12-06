Class {
	#name : #MMMindMap,
	#superclass : #Object,
	#instVars : [
		'title',
		'creator'
	],
	#category : #'GtMindMap-Model'
}

{ #category : #accessing }
MMMindMap class >> titled: aTitle creator: aSession [
	^self new
		title: aTitle;
		creator: aSession;
		yourself
]

{ #category : #accessing }
MMMindMap >> creator: aSession [ 
	creator := aSession
]

{ #category : #accessing }
MMMindMap >> title: aTitle [ 
	title := aTitle
]
