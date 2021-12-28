rem    using   decimal  basic
rem   download   from http://hp.vector.co.jp/authors/VA008683/setup.htm    

LET n=7
DIM  dist(n), node$(n),path$(n)
MAT READ node$
DATA  A,B,C,D,E,F,G
MAT path$=node$(1)&NUL$

DIM  c(n,n)
MAT c=1000*CON
LET inf=1000
LET dist(1)=0
LET dist(2)=inf
LET dist(3)=inf
LET dist(4)=inf
LET dist(5)=inf
LET dist(6)=inf
LET dist(7)=inf
LET c(1,1)=0
LET c(2,2)=0
LET c(3,3)=0
LET c(4,4)=0
LET c(5,5)=0
LET c(6,6)=0
LET c(7,7)=0
LET c(1,2)=10
LET c(2,1)=10
LET c(1,3)=20
LET c(3,1)=20
LET c(2,3)=5
LET c(3,2)=5
LET c(1,4)=1000
LET c(4,1)=1000
LET c(1,7)=10
LET c(7,1)=10
LET c(2,5)=1000
LET c(5,2)=1000
LET c(2,4)=7
LET c(4,2)=7
LET c(3,4)=1000
LET c(4,3)=1000
LET c(3,5)=15
LET c(5,3)=15
LET c(5,6)=2
LET c(6,5)=2
LET c(5,7)=1
LET c(7,5)=1
LET c(4,6)=1
LET c(6,4)=1
LET c(4,7)=5
LET c(7,4)=5
LET c(6,7)=3
LET c(7,6)=3

REM-----------------------------------------------------------------
LET w=0
DO  WHILE  w<=n
   FOR  t=1  TO n
      FOR i=1  TO n
       
         IF  dist(i)>dist(t)+c(t,i)  THEN
            LET dist(i)=dist(t)+c(t,i)
            LET path$(i)=path$(t)&node$(i)
             
             
         END IF
          
      NEXT  i
       
   NEXT  t
   LET w=w+1
LOOP  
REM-----------------------------------
PRINT  "-------------------------------------------------------"

FOR   x=1  TO n
   PRINT  "Å’Z‹——£="; dist(x); ", Œo˜H=";path$(x)
NEXT x

END





