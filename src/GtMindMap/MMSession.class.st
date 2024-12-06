Class {
	#name : #MMSession,
	#superclass : #Object,
	#instVars : [
		'user',
		'focus'
	],
	#category : #'GtMindMap-Model'
}

{ #category : #accessing }
MMSession >> focus: map [ 
	focus := map
]

{ #category : #accessing }
MMSession >> newMap: aTitle [
	|map|
	map := MMMindMap titled: aTitle creator: self.
	self focus: map.
	^map
]

{ #category : #'as yet unclassified' }
MMSession >> user [
	^ user
]

{ #category : #'as yet unclassified' }
MMSession >> user: aString [ 
	user := aString
]
