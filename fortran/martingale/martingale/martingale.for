
!  --------------------------------------------------
!  Silverfrost FTN95 for Microsoft Visual Studio
!  Fixed Format FTN95 Source File
!  --------------------------------------------------
      PROGRAM MARTINGALE
          
        INCLUDE CONSTS

        INTEGER NRUNS, BET_MIN, TIMES_MAX

        LOGICAL WON, LOSE

        INTEGER MONEY, MONEY0

        NRUNS = 100;
        BET_MIN = 5;
        TIMES_MAX = 6;
        META = 1;

        ! exemplo, para aposta minima de 5,
        ! supoe dinheiro igual a 5 + 10 + 20 + 40 + ... + 160
        MONEY0 = BET_MIN * 2 ** (TIMES_MAX-1);
        MONEY = MONEY0;


        


      END PROGRAM