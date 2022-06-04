function S = DXY(x,y)

S = 10*log10(mean((x-y).^2)./mean(x.^2)); %equação que mede a distorção em dB
