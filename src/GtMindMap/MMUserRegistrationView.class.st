Class {
	#name : #MMUserRegistrationView,
	#superclass : #BlElement,
	#instVars : [
		'user'
	],
	#category : #'GtMindMap-Model'
}

{ #category : #accessing }
MMUserRegistrationView class >> on: aUser [
	^self basicNew
		user: aUser;
		initialize
]

{ #category : #'as yet unclassified' }
MMUserRegistrationView >> fieldEditor: anAccessor [
	^(BrEditor new)
		size: 300@20;
		text: ((user perform: anAccessor) asString asRopedText
			fontSize: 12;
			foreground: Color black);
		aptitude: BrGlamorousCodeEditorAptitude;
		padding: (BlInsets left: 2);
		background: (Color lightYellow muchLighter);
		border: Color lightGray
]

{ #category : #'as yet unclassified' }
MMUserRegistrationView >> fieldLabel: aString [
	^(BlTextElement
		text: (aString asRopedText
			fontSize: 12;
			foreground: Color black))
		padding: (BlInsets all: 4)
]

{ #category : #'as yet unclassified' }
MMUserRegistrationView >> initialize [
	super initialize.
	self layout: (BlGridLayout new
		columnCount: 2;
		cellSpacing: 4);
	border: Color gray;
	constraintsDo: [ :c |
		c horizontal fitContent.
		c vertical fitContent].
	self addChild: (self fieldLabel: 'Name').
	self addChild: (self fieldEditor: #userName).
	self addChild: (self fieldLabel: 'Password').
	self addChild: (self fieldEditor: #password).
	self addChild: (self fieldLabel: 'Avatar').
	self addChild: (self smallAvatar).

]

{ #category : #'as yet unclassified' }
MMUserRegistrationView >> smallAvatar [
	|element|
	element := BlElement new
		size: 32@32;
		layout: BlFrameLayout new;
		geometry: BlCircleGeometry new;
		background: Color yellow;
		border: Color lightGray.
	user avatar ifNil: [
		element addChild: ((BlTextElement
			text: ('NN' asRopedText
				fontSize: 12;
				bold;
				foreground: Color black))
		constraintsDo: [ :c |
			c frame horizontal alignCenter.
			c frame vertical alignCenter]
).
].
	^element
]

{ #category : #'as yet unclassified' }
MMUserRegistrationView >> user: aUser [ 
	user := aUser
]
