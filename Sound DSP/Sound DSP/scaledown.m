
% function: scale down the frequency components
% coeff= FFT full coefficients
% n= factor to scale down the frequency
function fullFFT=scaledown(coeff,n)
%select the part that must be shifted
L=floor(length(coeff)/2);
%make the new vector with the DC in place
newcoeff=zeros(L,1);

for k=1:1:L
    if(k*n>L)
        uppcoeff=0;
    else
        uppcoeff=coeff(k*n);
    end
    
    newcoeff(k)=uppcoeff;
end
newcoeff(1)=coeff(1);
%rebuild a consistent fft vector
fullFFT=mirrorfft(newcoeff(1:L),coeff);
end

