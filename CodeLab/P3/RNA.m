function Y = RNA(X,W,bias)
Y = hardlim(sum(X.*W,2)+bias); 