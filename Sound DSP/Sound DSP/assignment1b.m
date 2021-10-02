close all;
N=nsamples;
tscale=0:Ts:(N-1)*Ts;
%N=number of FFT points: change it and test the different resolution
fscale=linspace(0,fmax/2,floor(N/2));
spectrum=fft(left,N);
%scale down the frequencies:
% high frequencies components are remapped to low frequencies
newcoeff=scaledown(spectrum,2);
h=figure
subplot(2,1,1)
plotSpectrum(fscale,newcoeff);
subplot(2,1,2)
%listen to the result
plotTime(tscale,ifft(newcoeff));
%save result in a wav file
playFile(ifft(newcoeff),Fs,'scaledown.wav')
saveas(h,'pitchdown.fig')
%scale down the frequencies:
% low frequencies components are remapped to higher frequencies
newcoeff=scaleup(spectrum,2);
h=figure
subplot(2,1,1)
plotSpectrum(fscale,newcoeff);
subplot(2,1,2)
plotTime(tscale,ifft(newcoeff));
%save result in a wav file
playFile(ifft(newcoeff),Fs,'scaleup.wav')
saveas(h,'pitchup.fig')