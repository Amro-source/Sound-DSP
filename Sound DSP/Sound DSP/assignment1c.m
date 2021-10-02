%squaring in time domain
close all
squared=left.^2;
sqrSpectrum=fft(squared);

h=figure
%plot the spectrum in the range [0 5kHz]
plotSpectrumColor(fscale,sqrSpectrum,[0 5000],'k');
title('Spectrum of the squared signal');
saveas(h,'squaredSpectrum.fig')
h=figure
%plot the spectrum in the range [0 5kHz]
plotSpectrumColor(fscale,spectrum,[0 5000],'b');
title('Spectrum of the original signal');
saveas(h,'originalSpectrum.fig')
h=figure
%plot the squared signal in time domain
plotTime(tscale,squared);
title('Squared signal');
saveas(h,'squaredSignal.fig')

%listen to the squared signal
playFile(squared,Fs,'squared.wav');