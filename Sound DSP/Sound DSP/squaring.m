%squaring in time domain
close all
squared=left.^2;
sqrSpectrum=fft(squared);

h=figure
plotSpectrumColor(fscale,sqrSpectrum,[0 5000],'k');
saveas(h,'squaredSpectrum.fig')
h=figure
plotSpectrumColor(fscale,spectrum,[0 5000],'b');
saveas(h,'originalSpectrum.fig')
h=figure
%plotTime(tscale,left);
plotTime(tscale,squared);