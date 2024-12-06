Class {
	#name : #MMMindMapView,
	#superclass : #BlElement,
	#instVars : [
		'mindmap'
	],
	#category : #'GtMindMap-Model'
}

{ #category : #'as yet unclassified' }
MMMindMapView >> initialize [
	super initialize.
	self size: 600@400.
	self border: Color black
]

{ #category : #accessing }
MMMindMapView >> mindmap [
	^ mindmap
]

{ #category : #accessing }
MMMindMapView >> mindmap: anObject [
	mindmap := anObject
]
