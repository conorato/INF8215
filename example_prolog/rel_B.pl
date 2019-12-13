child_fact(oscar,karen,franz).
child_fact(mary,karen,franz).
child_fact(eve,anne,oscar).
child_fact(henry,anne,oscar).
child_fact(isolde,anne,oscar).
child_fact(clyde,mary,oscarb).

child(X,Z,Y) :- child_fact(X,Y,Z).
child(X,Z,Y) :- child_fact(X,Z,Y).

descendant(X,Y) :- child(X,Y,Z).
descendant(X,Y) :- child(X,U,V), descendant(U,Y).

sibling(X,Y) :- child(X,U,V), child(Y,U,V).
cousin(X,Y) :- child(X,U,V), child(Y,W,Z), sibling(U,W).
cousin(X,Y) :- child(X,U,V), child(Y,W,Z), sibling(U,Z).
cousin(X,Y) :- child(X,U,V), child(Y,W,Z), sibling(V,W).
cousin(X,Y) :- child(X,U,V), child(Y,W,Z), sibling(V,Z).