function Y = ADALINE(X,W,bias)
Y = purelin(sum(X.*W,2)-bias); 
