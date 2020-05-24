Class {
	#name : #BaselineOfGeoCheatsheet,
	#superclass : #BaselineOf,
	#category : #BaselineOfGeoCheatsheet
}

{ #category : #baselines }
BaselineOfGeoCheatsheet >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'Geo Cheatsheet' ]
]
