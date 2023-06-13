"
'Counter' is a simple concrete class which supports incrementing and decrementing

It's API is
- 'decrement' and 'increment'
- 'count'

It's creation message is 'startAt'
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
	^ self new count: anInteger 
]

{ #category : #accessing }
Counter >> count [
	^ count 
]

{ #category : #accessing }
Counter >> count: aCount [

	count := aCount.
	^ self
]

{ #category : #API }
Counter >> decrement [
	count := count - 1.
	^ self
]

{ #category : #accessing }
Counter >> increment [
	count := count + 1.
	^ self
	
]

{ #category : #initialization }
Counter >> initialize [ 
	"Set the inital value of the counter to 0"
	
	count := 0.
	^ self
	
]

{ #category : #printing }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' with value: ', count printString.
	
]
