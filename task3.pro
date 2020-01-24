predicates
  driver(symbol)
  animal(symbol)
  animal_color(symbol,symbol)
  street(symbol)
  car(symbol)
  car_color(symbol,symbol)
  driving(symbol,symbol) 
  crossing(symbol,symbol) 
  hit(symbol,symbol) 
 
clauses
  driver(matthew).
  driver(liza).
  driver(alyson).
  animal(dog).
  animal(cat).
  animal_color(dog,black).
  animal_color(cat,red).
  street(lenin).
  street(vernadsky).
  car(chevrolet).
  car(ford).
  car(nissan).
  car_color(nissan,blue).
  car_color(ford,white). 

  driving(X,street):-
	car(ford),  car_color(ford,white), driver(X), street(vernadsky). 
  crossing(Y,street):-
	animal(Y), animal_color(Y,black), street(vernadsky).
  hit(X,Y):-
	driver(X), driving(X,street), crossing(Y,street).

 goal
  hit(matthew,dog).
  %hit(matthew,cat).