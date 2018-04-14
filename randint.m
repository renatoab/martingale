function randint = randint(dimens, range)
	
	rand_re = rand(dimens) * 1e7;
	
	rand_int = range(1) + floor(mod(rand_re, range(2) - range(1) + 1));
	
	randint = rand_int;
	
end