Class {
	#name : #BaselineOfGeoCheatsheet,
	#superclass : #BaselineOf,
	#category : #BaselineOfGeoCheatsheet
}

{ #category : #baselines }
BaselineOfGeoCheatsheet >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec package: 'Geo Cheatsheet' ]
]

{ #category : #baselines }
BaselineOfGeoCheatsheet >> setUpDependencies: spec [

	spec
		baseline: 'Teapot'
			with: [ spec
				repository: 'github://zeroflag/Teapot:master/source';
				loads: #('Deployment') ];
		import: 'Teapot'.
]
