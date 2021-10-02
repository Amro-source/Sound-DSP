
% wav file in PCM forma to morph
% frequency shiftiting
function fullFFT=shiftup(coeff,n)
%select the part that must be shifted
L=floor(length(coeff)/2);
%make the new vector with the DC in place
newcoeff=zeros(L,1);
newcoeff(1)=coeff(1);
newcoeff(n:L)=coeff(2:L-n+2);
fullFFT=mirrorfft(newcoeff,coeff);
end

