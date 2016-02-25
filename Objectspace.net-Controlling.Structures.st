Object subclass: #Switch	instanceVariableNames: 'value satisfied response'	classVariableNames: ''	poolDictionaries: ''	category: 'Objectspace.net-Controlling Structures'!!Switch methodsFor: 'private testing' stamp: 'PrzemyslawNiescior 12/18/2012 10:53'!isSatisfied

	^satisfied == true! !!Switch methodsFor: 'controlling' stamp: 'PrzemyslawNiescior 2/25/2016 16:29'!case: oneArgTestBlock then: execBlock

	"The oneArgTestBlock must return a Boolean value when passed the value of the receiver"
	
	self isSatisfied ifFalse: [
		(oneArgTestBlock value: self value) ifTrue: [
			self response: execBlock value.
			self satisfied: true]].	^self response! !!Switch methodsFor: 'controlling' stamp: 'PrzemyslawNiescior 2/25/2016 16:29'!caseIdentityIs: testObject then: execBlock

	^self case: [:aValue | testObject == aValue] then: execBlock! !!Switch methodsFor: 'controlling' stamp: 'PrzemyslawNiescior 2/25/2016 16:29'!caseIs: testObject then: execBlock

	^self case: [:aValue | testObject = aValue] then: execBlock! !!Switch methodsFor: 'controlling' stamp: 'PrzemyslawNiescior 2/25/2016 16:29'!caseIsAny: testCollection then: execBlock

	^self case: [ :aValue | testCollection includes: aValue ] then: execBlock! !!Switch methodsFor: 'controlling' stamp: 'PrzemyslawNiescior 12/18/2012 11:24'!default: execBlock

	self isSatisfied ifFalse: [
		self response: execBlock value].
 	^self response ! !!Switch methodsFor: 'private accessing' stamp: 'PrzemyslawNiescior 12/18/2012 11:28'!response
	^ response! !!Switch methodsFor: 'private accessing' stamp: 'PrzemyslawNiescior 12/18/2012 11:28'!response: anObject
	response := anObject! !!Switch methodsFor: 'private accessing' stamp: 'PrzemyslawNiescior 12/18/2012 11:28'!satisfied
	^ satisfied! !!Switch methodsFor: 'private accessing' stamp: 'PrzemyslawNiescior 12/18/2012 11:28'!satisfied: anObject
	satisfied := anObject! !!Switch methodsFor: 'private accessing' stamp: 'PrzemyslawNiescior 12/18/2012 11:27'!value
	^ value! !!Switch methodsFor: 'private accessing' stamp: 'PrzemyslawNiescior 12/18/2012 11:27'!value: anObject
	value := anObject! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!Switch class	instanceVariableNames: ''!!Switch class methodsFor: 'instance creation' stamp: 'PrzemyslawNiescior 12/18/2012 10:51'!for: anObject

	^self new value: anObject! !