Class {
	#name : #MMUser,
	#superclass : #Object,
	#instVars : [
		'userName',
		'avatar',
		'password'
	],
	#category : #'GtMindMap-Model'
}

{ #category : #accessing }
MMUser >> avatar [
	^ avatar
]

{ #category : #accessing }
MMUser >> avatar: anObject [
	avatar := anObject
]

{ #category : #accessing }
MMUser >> password [
	^ password
]

{ #category : #accessing }
MMUser >> password: anObject [
	password := anObject
]

{ #category : #accessing }
MMUser >> registerView [
	^MMUserRegistrationView on: self
]

{ #category : #accessing }
MMUser >> userName [
	^ userName
]

{ #category : #accessing }
MMUser >> userName: anObject [
	userName := anObject
]
