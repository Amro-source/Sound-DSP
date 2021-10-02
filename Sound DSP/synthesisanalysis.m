[d,r] = wavread('piano-chrom.wav');
 [F,M] = swsmodel(d,r);
 plot(F'); % show all the frequencies
 dr = synthtrax(F,M,r);
 % Listen to it
 sound(dr,r)
 % Compare to noise-excited reconstruction of LPC analysis
 [a,g] = lpcfit(d);
 dl = lpcsynth(a,g);
 sound(dl,a);
 % The LPC reconstruction is based on more or less the same information 
 % as the sinewave replica, but it sounds less 'weird'
 % Compare the spectrograms
 subplot(311)
 specgram(d,256,r);
 title('Original');
 subplot(312)
 specgram(dr,256,r);
 title('Sine wave replica');
 subplot(313)
 specgram(dl,256,r);
title('Noise-excited LPC reconstruction');