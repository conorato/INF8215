connexe(salle1,salle2).
connexe(salle2,salle5).
connexe(salle3,exterieur).
connexe(salle4,salle7).
connexe(salle5,salle6).
connexe(salle5,salle8).
connexe(salle6,salle9).
connexe(salle9,exterieur).

sortir(exterieur).

sortir(X) :- connexe(X,Y), sortir(Y).