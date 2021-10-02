% function: plot the spectrum 
% fscale= vector with frequencies on the X axis
% spectrum= vector of the real values
function plotSpectrum(fscale,spectrum)

%plot the magnitude
subplot(2,1,1)
plot(fscale,abs(spectrum(1:length(fscale))));
xlabel('Frequency Hz')
ylabel('Module')
%plot the phase
subplot(2,1,2)
plot(fscale,angle(spectrum(1:length(fscale))));
xlabel('Frequency Hz')
ylabel('Angle')
