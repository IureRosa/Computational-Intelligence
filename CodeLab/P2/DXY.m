function S = DXY(x,y)

S = 10*log10(mean((x-y).^2)./mean(x.^2)); %equa��o que mede a distor��o em dB
