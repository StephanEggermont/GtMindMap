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
MMNode >> nodeView: aView [
	<gtView>
		^ aView explicit
		title: 'Node';
		priority: 10;
		stencil: [MMRootNodeView new node: self;yourself];
		yourself
]

{ #category : #'as yet unclassified' }
MMNode >> parent [
	^parent
]

{ #category : #accessing }
MMNode >> parent: aNode [
	parent := aNode
]

{ #category : #'as yet unclassified' }
MMNode >> view [
	^MMRootNodeView new node: self; yourself
]
