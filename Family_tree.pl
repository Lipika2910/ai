% Facts

% Gender facts
male(sameer).
male(rajkumar).
male(vivaan).
male(nimish).

female(gunjan).
female(ridhima).
female(lipika).
female(kamlesh).
female(nandini).

% Parent-child relationships
parent_of(sameer, lipika).
parent_of(sameer, ridhima).
parent_of(sameer, vivaan).
parent_of(gunjan, lipika).
parent_of(gunjan, ridhima).
parent_of(gunjan, vivaan).
parent_of(rajkumar, sameer).
parent_of(kamlesh, sameer).
parent_of(rajkumar, gunjan).
parent_of(kamlesh, gunjan).

% Sibling relationships
sibling_of(lipika, ridhima).
sibling_of(lipika, vivaan).
sibling_of(ridhima, vivaan).
sibling_of(ridhima, lipika).
sibling_of(vivaan, lipika).
sibling_of(vivaan, ridhima).

% Cousin relationships
cousin_of(lipika, nimish).
cousin_of(lipika, nandini).
cousin_of(ridhima, nimish).
cousin_of(ridhima, nandini).
cousin_of(vivaan, nimish).
cousin_of(vivaan, nandini).

% Spouse relationships
husband_of(sameer, gunjan).
husband_of(rajkumar, kamlesh).

wife_of(gunjan, sameer).
wife_of(kamlesh, rajkumar).

% Extended relationships
uncle_of(sameer, nimish).
uncle_of(sameer, nandini).
aunt_of(gunjan, nimish).
aunt_of(gunjan, nandini).

% Rules

% Father
father_of(Father, Child) :-
    male(Father),
    parent_of(Father, Child).

% Mother
mother_of(Mother, Child) :-
    female(Mother),
    parent_of(Mother, Child).

% Married
married_to(Person1, Person2) :-
    husband_of(Person1, Person2);
    wife_of(Person1, Person2).

% Grandparent
grandparent_of(Grandparent, Grandchild) :-
    parent_of(Grandparent, Parent),
    parent_of(Parent, Grandchild).

% Grandfather
grandfather_of(Grandfather, Grandchild) :-
    male(Grandfather),
    grandparent_of(Grandfather, Grandchild).

% Grandmother
grandmother_of(Grandmother, Grandchild) :-
    female(Grandmother),
    grandparent_of(Grandmother, Grandchild).

% Cousin
cousin_of(Person1, Person2) :-
    parent_of(Parent1, Person1),
    parent_of(Parent2, Person2),
    sibling_of(Parent1, Parent2).

% Sister
sister_of(Sister, Person) :-
    female(Sister),
    sibling_of(Sister, Person).

% Brother
brother_of(Brother, Person) :-
    male(Brother),
    sibling_of(Brother, Person).

% Uncle
uncle_of(Uncle, NieceNephew) :-
    male(Uncle),
    sibling_of(Uncle, Parent),
    parent_of(Parent, NieceNephew).

% Aunt
aunt_of(Aunt, NieceNephew) :-
    female(Aunt),
    sibling_of(Aunt, Parent),
    parent_of(Parent, NieceNephew).

% Son
son_of(Son, Parent) :-
    male(Son),
    parent_of(Parent, Son).

% Daughter
daughter_of(Daughter, Parent) :-
    female(Daughter),
    parent_of(Parent, Daughter).

% Niece
niece_of(Niece, UncleOrAunt) :-
    female(Niece),
    parent_of(Parent, Niece),
    sibling_of(Parent, UncleOrAunt).

% Nephew
nephew_of(Nephew, UncleOrAunt) :-
    male(Nephew),
    parent_of(Parent, Nephew),
    sibling_of(Parent, UncleOrAunt).

% Discontiguous Directive
:- discontiguous husband_of/2.
:- discontiguous wife_of/2.
:- discontiguous cousin_of/2.
:- discontiguous uncle_of/2.
:- discontiguous aunt_of/2.
:- discontiguous sibling_of/2.






