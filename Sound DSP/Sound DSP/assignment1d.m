%thresholding function:
% a primitive mp3 lame encoder
close all
% delete all coefficients whose module
% is greater than 300
% this actually produce an echo effect!
newspectrum=cthresh(spectrum,300);

h=figure
plotSpectrumColor(fscale,newspectrum,[0 5000],'k');
saveas(h,'thresholded.fig')
h=figure
plotSpectrumColor(fscale,spectrum,[0 5000],'b');
saveas(h,'originalSpectrum.fig')
title('Original spectrum');
h=figure;
filtered=ifft(newspectrum);
plotTime(tscale,filtered);
saveas(h,'timeThreshold.fig');
title('After thresholding');
playFile(filtered,Fs,'threshold.wav');
