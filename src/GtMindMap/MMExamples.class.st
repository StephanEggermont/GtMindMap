Class {
	#name : #MMExamples,
	#superclass : #Object,
	#category : #'GtMindMap-Model'
}

{ #category : #accessing }
MMExamples class >> otherNode [
	<Example>
	|node|
	node := MMNode new.
	self assert: node parent isNil.
	^node
]

{ #category : #accessing }
MMExamples class >> rootNode [
	<Example>
	|node|
	node := MMNode new.
	self assert: node parent isNil.
	^node
]

{ #category : #accessing }
MMExamples class >> session [
	<Example>
	|session|
	session := MMSession new.
	session user: 'User'.
	self assert: session user = 'User'.
	^session
	
]
