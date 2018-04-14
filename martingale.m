
consts;

nruns = 200;

bet_min = 5;
times_max = 6;

meta = 1;

money0 = bet_min * (2^(times_max-1)-1);
money = money0;

won = false; lose = false;

include_0 = 2;

choice_ini = BLACK; 
choice = choice_ini;

right = 1;

total_acertos = 0; total_erros = 0; total_vitorias = 0; total_derrotas = 0;
total_black = 0; total_red = 0; total_green = 0;

for i_run = 1:nruns
	
	hand = 0; money = money0; lost = false; won = false; bet = bet_min;
	
	while (~won && ~lost)
		
		hand = hand + 1;
		
		if right
			choice = mod(choice,2) + 1;
			bet = bet_min;
		else
			bet = 2 * bet;
		end
		
		[number, color, parity] = run_wheel(include_0);
		
		if color == BLACK
			total_black = total_black + 1;
		elseif color == RED
			total_red = total_red + 1;
		else	
			total_green = total_green + 1;
		end
		
		if color == choice
			right = true; total_acertos = total_acertos+1;
			money = money + bet;
		else
			right = false; total_erros = total_erros+1;
			money = money - bet;
		end
		
		% "money"
		% money
		
		if money >= money0 * (1 + meta)
			won = true; total_vitorias = total_vitorias + 1;
		elseif money <= money0 * (1 - meta);
			lost = true; total_derrotas = total_derrotas + 1;
		end
		
	end
	
end



disp('Estatisticas')
disp('-------------');
disp(' ');
disp('% Vitorias:');
disp(100 * total_vitorias / (total_vitorias + total_derrotas));
disp(' ');
disp('% Acertos:');
disp(100 * total_acertos / (total_acertos + total_erros));
disp(' ')
disp('% PRETO')
disp(100 * total_black / (total_black + total_red + total_green));
disp('% VERMELHO');
disp(100 * total_red / (total_black + total_red + total_green));
disp('% VERDE')
disp(100 * total_green / (total_black + total_red + total_green));

