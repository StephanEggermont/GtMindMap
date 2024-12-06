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

{ #category : #'as yet unclassified' }
MMMindMap >> mindmapView: aView [
	<gtView>
		^ aView explicit
		title: 'MindMap';
		priority: 10;
		stencil: [MMMindMapView new mindmap: self;yourself];
		yourself

]

{ #category : #'as yet unclassified' }
MMMindMap >> nodes [
	^#(1 2)
]

{ #category : #'as yet unclassified' }
MMMindMap >> nodesView: aView [
	<gtView>
		^ aView columnedTree
		title: 'Nodes';
		priority: 20;
		items: [ self nodes ];
		children: [:each | 1 to: each "each children"];
		column: 'Index' text: [ :_ :anIndex | anIndex ] width: 40;
		column: 'Name' text: [ :each | each printString] width: 200;
		yourself

]

{ #category : #accessing }
MMMindMap >> title: aTitle [ 
	title := aTitle
]
