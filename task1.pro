predicates
  parent(symbol,symbol)
  female(symbol)
  male(symbol)
  mother(symbol,symbol) 
  father(symbol,symbol) 
  ancestor(symbol,symbol) 
  child(symbol,symbol) 
  grandmother(symbol,symbol)
  grandfather(symbol,symbol)
  sister(symbol,symbol) 
  brother(symbol,symbol) 
clauses
  parent(pam,bob).
  parent(tom,bob).
  parent(tom,liz).
  parent(bob,ann).
  parent(bob,pat).
  parent(pat,jim).
  female(pam).
  female(liz).
  female(ann).
  female(pat).
  male(tom).
  male(bob).
  male(jim).

  child(Y,X):- 
	parent(X,Y).
  mother(X,Y):- 
	parent(X,Y), female(X).
  father(X,Y):-	
	parent(X,Y), male(X).
  ancestor(X,Z):- 
	parent(X,Z).
  ancestor(X,Z):- 
	parent(X,Y), ancestor(Y,Z).
  grandmother(X,Y):- 
	parent(Z,X), parent(Y,Z), female(X).
  grandfather(X,Y):- 
	parent(Z,X), parent(Y,Z), male(X).
  sister(X,Y):- 
	parent(Z,X), parent(Z,Y), female(X), female(Y).
  brother(X,Y):- 
	parent(Z,X), parent(Z,Y), male(X), male(Y).
 goal
  sister(a,b).