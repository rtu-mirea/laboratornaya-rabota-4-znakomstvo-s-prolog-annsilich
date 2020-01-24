predicates
  likes(symbol,symbol)
  can_buy(symbol,symbol) 
  person(symbol)
  for_sale(symbol) 
  car(symbol)

clauses
  person(ann).
  person(tom).
  car(bmw).
  car(vaz).
  car(toyota).
  likes(ann,bmw).
  likes(tom,toyota).
  for_sale(toyota).
  for_sale(bmw).
  for_sale(vaz). 

  can_buy(X,Y):-
	person(X), car(Y), likes(X,Y), for_sale(Y). 

 goal
  can_buy(ann,bmw).