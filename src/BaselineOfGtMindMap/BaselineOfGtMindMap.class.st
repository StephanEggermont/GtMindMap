Class {
	#name : #BaselineOfGtMindMap,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtMindMap
}

{ #category : #loading }
BaselineOfGtMindMap class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'GtMindMap' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfGtMindMap >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'GtMindMap'
		]
]
