function charResult = TaylorLinearization(f,s,x,v) 
	syms s
	result= taylor(str2sym(f),str2sym(x),str2sym(v)); 
	charResult=char(result);
end	