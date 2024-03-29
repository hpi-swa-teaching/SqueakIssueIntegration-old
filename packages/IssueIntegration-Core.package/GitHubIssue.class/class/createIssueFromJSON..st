instance creation
createIssueFromJSON: aJSON
	| issue |

	issue := self new.
	issue number: (aJSON at: 'number');
	 title: (aJSON at: 'title');
	 body: (aJSON at: 'body').

	(aJSON at: 'assignee') ifNotNil: [:assignee |
		issue assignee: (assignee at: 'login').
	].

	^ issue