gars_fact(antoine).
gars_fact(jean).
gars_fact(paul).
gars_fact(fernando).
false :- gars_fact(claudia).
false :- gars_fact(marie).

love_fact(jean,marie).
love_fact(paul,antoine).
love_fact(antoine,claudia).
love_fact(fernando,claudia).

love(X,Y) :- love_fact(X,Y).

love(claudia,X) :- not(X==claudia), love(X,claudia).

false :- love(X,paul).

amant(X,Y) :- love(X,Y), love(Y,X), gars_fact(X), not(gars_fact(Y)).
amant(X,Y) :- love(X,Y), love(Y,X), gars_fact(Y), not(gars_fact(X)).