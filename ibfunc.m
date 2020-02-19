function x=ibfunc(la,y)
%
%     x=ibfunc(la,y) 
%     --- Inverse Base function for the Logistic Map
%
%     la inside [2,4]
%     y inside [0, la/4]

if y>la/4, disp('----ERROR: y is larger than lambda/4'); x=NaN; return; end
if y<0, disp('----ERROR: y is negative'); x=NaN; return; end

Y=y;
NN=12;
for k=1:NN
  Y=(1 - sqrt(1 - 4*Y/la))/2;
end
X=sqrt((-1 + la - sqrt((1 + 4*Y -la)*(1-la)))/2);
x=X*la^(NN/2);

