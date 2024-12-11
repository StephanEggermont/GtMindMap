Class {
	#name : #MMRootNodeView,
	#superclass : #BlElement,
	#instVars : [
		'node'
	],
	#category : #'GtMindMap-Model'
}

{ #category : #'as yet unclassified' }
MMRootNodeView >> initialize [
	| icon |
	super initialize.
	self geometry: BlEllipseGeometry new;
		background: (Color r: 255 g: 64 b: 129 range: 255);
		relocate: 100@100;
		size: 120@80;
		layout: BlFrameLayout new;
		effect: (BlGaussianShadowEffect color: (Color black alpha: 0.3) width: 1 offset: 0@2).

	icon := (BlPolygonGeometry vertices: ({
			36@0. 48@0 . 48@36 . 84@36.
			84@48 . 48@48 . 48@84 . 36@84.
			36@48 . 0@48 . 0@36. 36@36
		} collect: [ :aPoint | aPoint / 3.0])) asElement.

	icon background: Color white.
	icon border: BlBorder empty.
	icon constraintsDo: [ :c |
		c frame horizontal alignCenter.
		c frame vertical alignCenter ].
	self addChild: icon
]

{ #category : #'as yet unclassified' }
MMRootNodeView >> node: aNode [
	node := aNode.
]
