% Thresholding funcion on the module of the spectrum
% input:
% spectrum= full fft coefficients
% thresh= cut off module
% output:
% newspectrum= full modified fft spectrum

function newspectrum=cthresh(spectrum,thresh)
%number of samples in the spectrum
N=length(spectrum);
% make a new FFT structure: half of the coefficients
newspectrum=spectrum;
% scan the module of the spectrum and if
% under the threshold sets it to 0
for k=1:1:N
    if(abs(spectrum(k))<thresh)
        newspectrum(k)=0;
    end
end

end