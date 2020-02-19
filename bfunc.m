function y=bfunc(la,x)
%       
%       y=bfunc(la,x)
%
%       --- Base function for the Logistic Map
%
%       la inside [2,4]
%       x inside [0, infty)

ep=10^(-10);
for j=1:length(x)
  k=ceil(-2*log(ep/x(j))/log(la));
  xo=x(j)*la^(-k/2);
  yo=bfuncTAY(la,xo);
 for kk=1:k, yo=la*yo*(1-yo); end
 y(j)=yo;
end
