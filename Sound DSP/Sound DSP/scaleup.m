
% function: scale up the frequency components
% coeff= FFT full coefficients
% n= factor to scale up the frequency
function fullFFT=scaleup(coeff,n)
%select the part that must be shifted
L=floor(length(coeff)/2);
%make the new vector with the DC in place
newcoeff=zeros(L,1);
for k=1:1:L
    newcoeff(n*k)=coeff(k);
end
newcoeff(1)=coeff(1);

fullFFT=mirrorfft(newcoeff(1:L),coeff);
end

