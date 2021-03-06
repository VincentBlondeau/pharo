"
I know how to remove a mehod
"
Class {
	#name : #SugsRemoveMethod,
	#superclass : #SugsSuggestion,
	#category : #'SmartSuggestions-Suggestion'
}

{ #category : #accessing }
SugsRemoveMethod class >> nodes [
	^{RBMethodNode}
]

{ #category : #execution }
SugsRemoveMethod >> execute [
	(NautilusRefactoring model: context) removeMethodsFor: (OrderedCollection with: context selectedMethod)
]

{ #category : #display }
SugsRemoveMethod >> icon [
	^self iconNamed: #smallCancelIcon
]

{ #category : #display }
SugsRemoveMethod >> label [
	^'Remove method' translated
]

{ #category : #display }
SugsRemoveMethod >> position [
	^20
]
