Object subclass: #Switch

	^satisfied == true! !

	"The oneArgTestBlock must return a Boolean value when passed the value of the receiver"
	
	self isSatisfied ifFalse: [
		(oneArgTestBlock value: self value) ifTrue: [
			self response: execBlock value.
			self satisfied: true]].

	^self case: [:aValue | testObject == aValue] then: execBlock! !

	^self case: [:aValue | testObject = aValue] then: execBlock! !

	^self case: [ :aValue | testCollection includes: aValue ] then: execBlock! !

	self isSatisfied ifFalse: [
		self response: execBlock value].
 	^self response ! !
	^ response! !
	response := anObject! !
	^ satisfied! !
	satisfied := anObject! !
	^ value! !
	value := anObject! !

	^self new value: anObject! !