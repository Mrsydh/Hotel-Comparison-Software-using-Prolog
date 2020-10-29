/* The Hotel compartion software */
statelist([]).
statelist(H|T):-write(H),nl,statelist(T).
list(a,['Private KTV']).
list(b,['Satellite phone,Map']).
list(c,['SPA, Wine']).

writelist([]).
writelist([H|T]):-
    write(H),nl,writelist(T).


go:-start,menu.

start:-
tab(10),display('WELCOME TO THE SABAH').

menu:-nl,tab(25),write('Hotel Menu'),nl,

tab(15),write('1. Hotel list '),nl,
tab(15),write('2. Order '),nl,
tab(15),write('3. RECOMMENDED SERVICE'),nl,
tab(15),write('4. THE TEST HELP YOU CHOICE HOTEL'),nl,
read(Selection),nl,choice(Selection).

choice(1):- format('~c~s',[0x1b,"[2J"]),
write('The Hotel In Sabah'),nl,nl,
write('1. 5 Star Hotel: Pacific Sutera (RM1000-RM900) '),nl,
write('2. 4 Star Hotel: Shangri-la Tanjung Aru (RM800-RM700) '),nl,
write('3. 3 Star Hotel: Gaya Island (RM600-RM500) '),nl,
read(Selection),nl,hotel(Selection).

/* Knowladge Base */

hotel(1):-
write(' Hotel Condition. '),nl,nl,
write('----------------------------------------------------------------------'),nl,
write(' The Basic part (This part is free) '),nl,
write(' 1. WiFi '),nl,
write(' 2. Breakfast  '),nl,
write(' 3. Cleaning   '),nl,
write(' 4. Hygiene_products '),nl,
write(' 5. SPA '),nl,
write(' 6. Wine '),nl,
write(' 7. Map '),nl,
write(' 8. Satellite phone '),nl,
write(' 9. Safe deposit box'),nl,
write(' 10. Metting room  '),nl,
write('----------------------------------------------------------------------'),nl,
write(' The Prime part (this part need the extra cost) '),nl,nl,
write(' 11. Private KTV'),nl,
write('----------------------------------------------------------------------'),nl,
write(' Please select any of the services. '),nl,
read(Selected_item),nl,write(' The price of the item is RM '),item1(Selected_item),nl,nl,
write(' Do you want to continue to know the prices of other services in this hotel? '),nl,
write('1.Yes'),nl,
write('2.No'),nl,
read(Selection),nl,selection1(Selection).

selection1(1):-hotel(1).
selection1(2):-menu.

item1(1):- write('0.00').
item1(2):- write('0.00').
item1(3):- write('0.00').
item1(4):- write('0.00').
item1(5):-write('0.00').
item1(6):-write('0.00').
item1(7):-write('0.00').
item1(8):-write('0.00').
item1(9):-write('0.00').
item1(10):-write('0.00').
item1(11):-write('150.0 (per person) ').





hotel(2):-
write(' Hotel Condition. '),nl,nl,
write('----------------------------------------------------------------------'),nl,
write(' The Basic part (This part is free) '),nl,
write(' 1. WiFi '),nl,
write(' 2. Breakfast   '),nl,
write(' 3. Cleaning   '),nl,
write(' 4. Hygiene products '),nl,
write(' 5. SPA '),nl,
write(' 6. Wine '),nl,
write('----------------------------------------------------------------------'),nl,
write(' The Prime part (this part need the extra cost) '),nl,nl,
write(' 7. Map '),nl,
write(' 8. Satellite phone '),nl,
write(' 9. Safe deposit box'),nl,
write(' 10. Metting room  '),nl,
write(' 11. Private KTV'),nl,
write('----------------------------------------------------------------------'),nl,
write(' Please select any of the services. '),nl,
read(Selected_item),nl,write(' The price of the item is RM '),item1(Selected_item),nl,nl,
write(' Do you want to continue to know the prices of other services in this hotel? '),nl,
write('1.Yes'),nl,
write('2.No'),nl,
read(Selection),nl,selection2(Selection).

selection2(1):-hotel(2).
selection2(2):-menu.

item2(1):- write('0.00').
item2(2):- write('0.00').
item2(3):- write('0.00').
item2(4):- write('0.00').
item2(5):-write('0.00').
item2(6):-write('0.00').
item2(7):-write('5.00').
item2(8):-write('30.00').
item2(9):-write('50.00').
item2(10):-write('300.00').
item2(11):-write('150.0 (per person) ').




hotel(3):-
write(' Hotel Condition. '),nl,nl,
write('----------------------------------------------------------------------'),nl,
write(' The Basic part (This part is free) '),nl,
write(' 1. WiFi '),nl,
write(' 2. Breakfast   '),nl,
write(' 3. Cleaning   '),nl,
write(' 4. Hygiene products '),nl,
write('----------------------------------------------------------------------'),nl,
write(' The Prime part (this part need the extra cost) '),nl,nl,
write(' 5. SPA '),nl,
write(' 6. Wine '),nl,
write(' 7. Map '),nl,
write(' 8. Satellite phone '),nl,
write(' 9. Safe deposit box'),nl,
write(' 10. Metting room  '),nl,
write(' 11. Private KTV'),nl,
write('----------------------------------------------------------------------'),nl,
write(' Please select any of the services. '),nl,
read(Selected_item),nl,write(' The price of the item is RM '),item1(Selected_item),nl,nl,
write(' Do you want to continue to know the prices of other services in this hotel? '),nl,
write('1.Yes'),nl,
write('2.No'),nl,
read(Selection),nl,selection3(Selection).

selection3(1):-hotel(3).
selection3(2):-menu.

item3(1):- write('0.00').
item3(2):- write('0.00').
item3(3):- write('0.00').
item3(4):- write('0.00').
item3(5):-write('230.00').
item3(6):-write('90.00').
item3(7):-write('5.00').
item3(8):-write('30.00').
item3(9):-write('50.00').
item3(10):-write('300.00').
item3(11):-write('150.0 (per person) ').






/* Order part */
choice(2):- format('~c~s',[0x1b,"[2J"]),
tab(15),write('The Hotel In Sabah'),nl,nl,
tab(15),write('1. 5 Star Hotel: Pacific Sutera '),nl,
tab(15),write('2. 4 Star Hotel: Shangri-la Tanjung Aru '),nl,
tab(15),write('3. 3 Star Hotel: Gaya Island '),nl,
read(Selection),nl,hotel1(Selection).
hotel1(1):-
write(' The PRICE in 5 Star Hotel: Pacific Sutera.'),nl,nl,
write('----------------------------------------------------------------------'),nl,
write(' Check in - check out'),nl,
write('----------------------------------------------------------------------'),nl,
write(' Check in - check out  (enter the number of days) :'),read(A),
write('----------------------------------------------------------------------'),nl,
write(' The Prime part '),nl,nl,
write(' Private KTV '),nl,
write('----------------------------------------------------------------------'),nl,
write(' Private KTV  (enter the umber of person) '),read(B),nl,

/*used to calculate the total amount of money*/
P is 1000.00*A + 150.00*B,

/*print out the value of the total amount of money needed to paid*/
write('----------------------------------------------------------------------'),nl,
write('Dear sir/madam your bill is : RM'),write(P),nl,
write('----------------------------------------------------------------------'),nl.




hotel1(2):-
write(' The PRICE in 4 Star Hotel: Shangri-la Tanjung Aru.'),nl,nl,
write('----------------------------------------------------------------------'),nl,
write(' Check in - check out'),nl,
write('----------------------------------------------------------------------'),nl,
write(' Check in - check out  (enter the number of days) :'),read(A),
write('----------------------------------------------------------------------'),nl,
write(' The Prime part '),nl,nl,
write(' Map '),nl,
write(' Satellite phone '),nl,
write(' Safe deposit box'),nl,
write(' Metting room  '),nl,
write(' Private KTV '),nl,
write('----------------------------------------------------------------------'),nl,
write(' Map '),read(B),
write(' Satellite phone '),read(C),
write(' Safe deposit box'),read(D),
write(' Metting room  '),read(E),
write(' Private KTV  (enter the umber of person) '),read(F),nl,

/*used to calculate the total amount of money*/
P is 850.00*A + 5.00*B + 30.00*C + 50.00*D + 300.00*E + 150.00*F,

/*print out the value of the total amount of money needed to paid*/
write('----------------------------------------------------------------------'),nl,
write('Dear sir/madam your bill is : RM'),write(P),nl,
write('----------------------------------------------------------------------'),nl.




hotel1(3):-
write(' The PRICE in 3 Star Hotel: Gaya Island.'),nl,nl,
write('----------------------------------------------------------------------'),nl,
write(' Check in - check out'),nl,
write('----------------------------------------------------------------------'),nl,
write(' Check in - check out  (enter the number of days) :'),read(A),
write('----------------------------------------------------------------------'),nl,
write(' The Prime part '),nl,nl,
write(' SPA '),nl,
write(' Wine '),nl,
write(' Map '),nl,
write(' Satellite phone '),nl,
write(' Safe deposit box'),nl,
write(' Metting room  '),nl,
write(' Private KTV '),nl,
write('----------------------------------------------------------------------'),nl,
write(' SPA '),read(B),
write(' Wine '),read(C),
write(' Map '),read(D),
write(' Satellite phone '),read(E),
write(' Safe deposit box'),read(F),
write(' Metting room  '),read(G),
write(' Private KTV  (enter the umber of person) '),read(H),nl,

/*used to calculate the total amount of money*/
P is 550.00*A + 230.00*B + 90.00*C + 5.00*D + 30.00*E + 50.00*F + 300.00*G + 150*H,

/*print out the value of the total amount of money needed to paid*/
write('----------------------------------------------------------------------'),nl,
write('Dear sir/madam your bill is : RM'),write(P),nl,
write('----------------------------------------------------------------------'),nl.





/* recommned service in 5 star hotel */
	
/* Recommend part */
choice(3):- format('~c~s',[0x1b,"[2J"]),
write("The system recommned service in each type of hotel"),nl,
write("Choose from: "),nl,
write("1. 5 Star Hotel: Pacific Sutera "),nl,
write("2. 4 Star Hotel: Shangri-la Tanjung Aru "),nl,
write("3. 3 Star Hotel: Gaya Island "),nl,
write("4. Return to menu"),nl,
read(Selection),nl,choice1(Selection).


choice1(1):-write("The system recommned service in 5 star hotel is : "),nl,

list(a,Popular),
writelist(Popular),nl,
write('Do you want to know the recommned service of the other hotel? '),nl,
write('1.Yes'),nl,
write('2.No'),nl,
read(Selection),nl,selection7(Selection).

selection7(1):-choice(3).
selection7(2):-menu.



/* recommned service in 4 star hotel */
choice1(2):-write("The system recommned service in 4 star hotel is : "),nl,

list(b,Popular),
writelist(Popular),nl,
write('Do you want to know the recommned service of the other hotel? '),nl,
write('1.Yes'),nl,
write('2.No'),nl,
read(Selection),nl,selection8(Selection).

selection8(1):-choice(3).
selection8(2):-menu.



/* recommned service in 3 star hotel */
choice1(3):-write("The system recommned service in 3 star hotel is : "),nl,
list(c,Popular),
writelist(Popular),nl,
write('Do you want to know the recommned service of the other hotel? '),nl,
write('1.Yes'),nl,
write('2.No'),nl,
read(Selection),nl,selection9(Selection).

selection9(1):-choice(3).
selection9(2):-menu.


/* the choice to back the menu */
choice1(4):-menu.
 
 
 
 
 
 
choice(4):- format('~c~s',[0x1b,"[2J"]),
write('You can take a look of the prices given.'),nl,
write('Price range:'),nl,
tab(12),write('RM500-RM600'),nl,
tab(12),write('RM700-RM800'),nl,
tab(12),write('RM900-RM1000'),nl,
write('What is your budget range?'),
read(Budget),nl,
write('******************************************************************'),nl,
write('-Room services-'),nl,
write('Here a several type of service provided.'),nl,
write('Room types:'),nl,
tab(11),write('WiFi'),nl,
tab(11),write('SPA'),nl,
tab(11),write('Satellite phone'),nl,
write('Which type of service you want?'),
read(Room_types),nl,
write('******************************************************************'),nl,
assert(budget(Budget)),assert(room_types(Room_types)),
rule(Rule,Hotel),
write('The hotel is: '),write(Hotel),nl,nl,
write('The rule used was Number '),write(Rule),nl,nl,
retractall(budget(_)),retractall(room_types(_)).

/*Knowledge Base*/

rule(1,'3 Star hotel: Gaya Island'):-budget(_RM500-_RM600),room_types(_WiFi).

rule(2,'4 Star hotel: Shangri-la Tanjung Aru'):-budget(_RM700-_RM800),room_types(_SPA).

rule(3,'5 Star hotel: Pacific Sutera'):-budget(_RM900-_RM1000),room_types(_Satellite_phone).

rule(4,'5 Star hotel: Pacific Sutera'):-budget(_RM900-_RM1000),room_types(_WiFi).

rule(5,'5 Star hotel: Pacific Sutera'):-budget(_RM900-_RM1000),room_types(_SPA).

rule(6,'4 Star hotel: Shangri-la Tanjung Aru'):-budget(_RM700-_RM800),room_types(_WiFi).

rule(7,'Maybe No Hotel Available But You Can Click Other Options').