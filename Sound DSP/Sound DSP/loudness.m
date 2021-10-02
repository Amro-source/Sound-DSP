
function [newcoeff]=loudness(fscale,coeff,inf,sup,factor)
%find the indexes in the frequency scale
[cinf]=find(fscale<inf & fscale >0);
[csup]=find(fscale>sup);
newcoeff=coeff;
N=length(coeff);
newcoeff(cinf)=coeff(cinf)*factor;
newcoeff(N-cinf+2)=coeff(N-cinf+2)*factor;
newcoeff(1)=coeff(1)*factor;
newcoeff(csup)=coeff(csup)*factor;
% you can do it also with a for loop
newcoeff(N-csup+2)=coeff(N-csup+2)*factor;
end