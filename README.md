# piano composer with Haskell !

##Method of thinking

  * part(a):-
  I recurs on all chars on string “chars” and for each one i find the frequency of any chars come after this char and Zip the frequency with list “chars” and sort them by using sortBy and sortGT and then remove the Chars of frequency 0 and form a pair with the formed array of  pair of “chars” and frequency and the chosen char.

  * part(b):-
  i check is it proper character ..(belongs to list “chars”) and if it have any char come after it ….then i sum all frequency and generate a random  number between [1,sum]  and recurse  on the array of frequency with C.F = 0 and update it if the generated value is between C.F and (C.F+Current frequency ) then i will take this Char .


##Functions:-
  - part(a):
    - makeStatsListHelper :-  it used the helper methods to generate and  list of pair and make a pair of them and a specific Char x.
    - find:-that find all frequencies of each Char in list “char” which come after specific Char x.
    - search :- count the number of times Char X and Y come after each others .
    - remove :- remove any pair of Zero frequency .
    - sortGT:- compare Function for the pair for SortBy.
 - part(b):
    - findI :-  used the Comulative Frequancy to find the interval that include specific number .
    - compose :-  Check if Char fund in list of “Char” and if it Have any Char After it ...otherwise i will put it in Symphony and get the second char by using method findI.
