
!  --------------------------------------------------
!  Silverfrost FTN95 for Microsoft Visual Studio
!  Fixed Format FTN95 Source File
!  --------------------------------------------------

        function run_wheel(number, color, parity, include_0)

	        include consts

	        number = randint([1,1], [1,36 + include_0]);

	        if number <= 36
		        if mod(number,2)==1
			        parity = ODD;	
		        else
			        parity = EVEN;
                end
		
                switch (number)
			        case 1
				        color = RED;
			        case 2
				        color = BLACK;
			        case 3
				        color = RED;
			        case 4
				        color = BLACK;
			        case 5
				        color = RED;	
			        case 6
				        color = BLACK;		
			        case 7
				        color = RED;
			        case 8
				        color = BLACK;		
			        case 9
				        color = RED;
			        case 10
				        color = BLACK;	
			        case 11
				        color = BLACK;
			        case 12
				        color = RED;
			        case 13
				        color = BLACK;
			        case 14
				        color = RED;
			        case 15
				        color = BLACK;
			        case 16
				        color = RED;
			        case 17
				        color = BLACK;
			        case 18
				        color = RED;
			        case 19
				        color = RED;
			        case 20
				        color = BLACK;
			        case 21
				        color = RED;
			        case 22
				        color = BLACK;
			        case 23
				        color = RED;
			        case 24
				        color = BLACK;
			        case 25
				        color = RED;
			        case 26
				        color = BLACK;
			        case 27
				        color = RED;
			        case 28
				        color = BLACK;
			        case 29
				        color = BLACK;
			        case 30
				        color = RED;
			        case 31
				        color = BLACK;
			        case 32
				        color = RED;
			        case 33
				        color = BLACK;
			        case 34
				        color = RED;
			        case 35
				        color = BLACK;
			        case 36
				        color = RED;		
                end
			
	        else
		        number = 	ZERO;
		        color = 	ZERO;
		        parity = 	ZERO;
		        majority = 	ZERO;
		        dozen = 	ZERO;
		        column = 	ZERO;
	        end
		
        end