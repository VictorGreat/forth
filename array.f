\ поиск по массиву размером CELL.
\ Код для простейших случвев
\
: SEARCH-ARRAY(CELL) \ zn a len -- addr[x]==zn|0
0 MAX
2>R
BEGIN R@ WHILE

1 RPICK @ OVER = IF RDROP DROP R> EXIT THEN
R> CELL-
CELL RP@ +! 
>R
REPEAT
RDROP RDROP 
DROP 0
;

\ поиск по массиву с заданным размером
\
\
: SEARCH-ARRAY \ zn xt step addr len -- addr[x]==zn|0
\ xt: zn addr -- flag
5 N>R
BEGIN 
1 RPICK 0 <
1 RPICK 0 =
OR 
			IF 
			NR> NDROP 0 EXIT 
			THEN
5 RPICK
2 RPICK 
4 RPICK EXECUTE
			IF
			2 RPICK
			NR> NDROP EXIT
			THEN

3 RPICK 2 RPLACE +!
3 RPICK 1 RPLACE -!
AGAIN

;
