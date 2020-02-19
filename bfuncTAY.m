function y=bfuncTAY(la,x)
%
%       y=bfuncTAY(la,x)
%
%       --- Taylor series for the Base function 
%       of the Logistic Map
%
%       la in [2,4]
%       for x in [0, 0.2], the function value has accuracy < 10^-14

y=x.^2 + x.^4/(1 - la) + (2*x.^6)/((-1 + la)^2*(1 + la)) ...
 - (x.^8*(5 + la))/((-1 + la)^3 *(1 + la)*(1 + la + la^2)) ...
 + (2*x.^10*(7 + 3*la + 2*la^2))/((-1 + la)^4*(1 + la)^2*(1 + la^2)*(1 + la + la^2))...
 - (2*x.^12*(21 + 14*la + 14*la^2 + 8*la^3 + 3*la^4))/ ...
     ((-1 + la)^5 *(1 + la)^2 *(1 + la^2)*(1 + la + la^2)*(1 + la + la^2 + la^3 + la^4)) ...
+ (4*x.^14*(33 + 30*la + 37*la^2 + 32*la^3 + 27*la^4 + 12*la^5 + 8*la^6 + la^7))/ ...
((-1 + la)^6*(1 + la)^3*(1 + la + la^2)^2*(1 + 2*la^2 + la^3 + 2*la^4 + la^5 + 2*la^6 + la^8)); 