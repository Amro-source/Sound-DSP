clear all;
close all;
clc;
%assigmnet 1
% import a voice sample
[y,Fs,nbit]=wavread('e.wav');

% divide left and right channel
left=y(:,1);
right=y(:,2);
% calculate the time scale
Ts=1/Fs;
[nsamples,c]=size(y);
tscale=0:Ts:(nsamples-1)*Ts;
%plot left and right channel in time domain
h1=figure(1)
subplot(2,1,1)
plot(tscale,left,'r');
xlabel('Time (sec)');
ylabel('Amplitude');
subplot(2,1,2)
plot(tscale,right,'r');
xlabel('Time (sec)');
ylabel('Amplitude');
saveas(h1,'1.fig')
% the left and right channel are equal
h2=figure(2)
plot(left-right);
saveas(h1,'1.fig')
%compute the FFT with the proper sampling frequency
fmax=Fs;
%how many points the FFT must be computed on?
N=nsamples;
tscale=0:Ts:(N-1)*Ts;
%N=number of FFT points: 
% change it and test the different resolution
fscale=linspace(0,fmax/2,floor(N/2));
spectrum=fft(left,N);
%plot the spectrum of the signal using the appropriate
% frequency scale and module of the coefficients
plotSpectrum(fscale,spectrum);
inf=200; % 200 Hz inf limit
sup=5000; % 5000 Hz superior limit
factor=[2,5,10]% amplification factors
newcoeff=loudness2(fscale,spectrum,inf,sup,factor(1));
h=figure
subplot(2,1,1)
%plot the spectrum of the modified spectrum
plotSpectrum(fscale,newcoeff);
subplot(2,1,2)
%plot the new signal in the time domain
plotTime(tscale,ifft(newcoeff));
%listen to the result
playFile(ifft(newcoeff),Fs,'loudenss1.wav')
saveas(h,'loudness1.fig')
%same procedure for the 2 factor
newcoeff=loudness2(fscale,spectrum,inf,sup,factor(2));
h=figure
subplot(2,1,1)
plotSpectrum(fscale,newcoeff);
subplot(2,1,2)
plotTime(tscale,ifft(newcoeff));
playFile(ifft(newcoeff),Fs,'loudenss2.wav')
saveas(h,'loudness2.fig')
%same procedure for the last factor
newcoeff=loudness2(fscale,spectrum,inf,sup,factor(3));
h=figure
subplot(2,1,1)
plotSpectrum(fscale,newcoeff);
subplot(2,1,2)
plotTime(tscale,ifft(newcoeff));
playFile(ifft(newcoeff),Fs,'loudenss3.wav')
saveas(h,'loudness3.fig')