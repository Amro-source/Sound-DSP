% function: given a range of frequencies [inf,sup]
% multiply every coefficient for a constant value 
% fscale= vector with frequencies (Hz)
% coeff=complex coefficients of the FFT
% inf,sup: inferior and superior limit in Hz
% factor: a real number

function [fullFFT]=loudness2(fscale,coeff,inf,sup,factor)
%number of samples in the frequency scale
L=length(fscale);
% make a new FFT structure: half of the coefficients
newcoeff=coeff(1:L);
% scan the frequency scale and NOT the index
for k=1:1:L
    if(fscale(k)<inf || fscale(k)>sup)
        newcoeff(k)=factor*coeff(k);
    end
end
% then mirror the coefficients
fullFFT=mirrorfft(newcoeff,coeff);
end