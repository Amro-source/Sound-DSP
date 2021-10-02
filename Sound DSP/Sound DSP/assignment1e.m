%thresholding function
close all
% delete all coefficients whose module
% is smaller than 300
% and delete the DC component
newspectrum=cthresh(spectrum,300);
newspectrum(1)=0;

h=figure
plotSpectrumColor(fscale,newspectrum,[0 5000],'k');
saveas(h,'thresholded.fig')
h=figure
plotSpectrumColor(fscale,spectrum,[0 5000],'b');
saveas(h,'originalSpectrum.fig')
h=figure;
filtered=ifft(newspectrum);
plotTime(tscale,filtered);
saveas(h,'timeThreshold.fig');
playFile(filtered,Fs,'threshold.wav');
