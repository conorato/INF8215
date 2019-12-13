entree(saladevert).
entree(melon).
entree(terrine).

platprincipal(beef).
platprincipal(saumon).
platprincipal(pates).

dessert(fromage).
dessert(yogourt).
dessert(cremebrule).

menu(faim,X,Y,Z) :- entree(X), platprincipal(Y), dessert(Z).

menu(pastropfaim,X,Y,Z) :- entree(X), platprincipal(Y), Z==rien.
menu(pastropfaim,X,Y,Z) :- X==rien, platprincipal(Y), dessert(Z).

menu(diete,X,Y,Z) :- entree(X), Y==rien, Z==rien.


