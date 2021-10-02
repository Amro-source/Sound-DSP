
% shift down the frequencies by n steps
% keep the DC component in place
function fullFFT=shiftdown(coeff,n)
%select the part that must be shifted
L=floor(length(coeff)/2);

%make the new vector with the DC in place
newcoeff=zeros(L,1);
newcoeff(1)=coeff(1);
newcoeff(2:L-n+2)=coeff(n:L);
fullFFT=mirrorfft(newcoeff,coeff);
end

