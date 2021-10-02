
%this function make consistent the FFT that has been modified
%only in the first part
function mirrored=mirrorfft(newcoeff,coeff);
% index of the odd frequency unpaired
M=floor(length(coeff)/2)+1;
% complex coniugate of the first half
fftconj=conj(flipdim(newcoeff(2:end),1));
mirrored=[newcoeff; coeff(M); fftconj];
end