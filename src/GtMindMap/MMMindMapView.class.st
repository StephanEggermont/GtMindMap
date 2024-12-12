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
	self border: Color black.
	self layout: BlLinearLayout horizontal.
]

{ #category : #accessing }
MMMindMapView >> mindmap [
	^ mindmap
]

{ #category : #accessing }
MMMindMapView >> mindmap: anObject [
	mindmap := anObject.
	mindmap nodes do: [:node |
		self addChild: node view.
		]
]
