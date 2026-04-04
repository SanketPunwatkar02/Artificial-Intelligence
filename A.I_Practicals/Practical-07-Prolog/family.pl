% ---------- Facts ----------

male(gunwant).
male(jiwandhar).
male(rajendra).
male(rohit).
male(rohan).

female(shantidevi).
female(padma).
female(sangita).

parent(gunwant, jiwandhar).
parent(shantidevi, jiwandhar).

parent(jiwandhar, rajendra).
parent(padma, rajendra).

parent(rajendra, rohit).
parent(sangita, rohit).

parent(rajendra, rohan).
parent(sangita, rohan).

% ---------- Rules ----------

father(X, Y) -
    parent(X, Y),
    male(X).

mother(X, Y) -
    parent(X, Y),
    female(X).

sibling(X, Y) -
    parent(Z, X),
    parent(Z, Y),
    X = Y.

grandparent(X, Y) -
    parent(X, Z),
    parent(Z, Y).

ancestor(X, Y) -
    parent(X, Y).

ancestor(X, Y) -
    parent(X, Z),
    ancestor(Z, Y).