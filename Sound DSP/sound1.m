% Create WAV file in current folder.
load handel.mat
 
hfile = 'handel.wav';
wavwrite(y, Fs, hfile)
clear y Fs
 
% Read the data back into MATLAB, and listen to audio.
[y, Fs, nbits, readinfo] = wavread(hfile);
sound(y, Fs);

figure(1), plot(y);
title('sound 1');
% Pause before next read and playback operation.
duration = numel(y) / Fs;
pause(duration + 2)
 
% Read and play only the first 2 seconds.
nsamples = 2 * Fs;
[y2, Fs] = wavread(hfile, nsamples);
sound(y2, Fs);
figure(2), plot(y2);

pause(4)
 
% Read and play the middle third of the file.
sizeinfo = wavread(hfile, 'size');
 
tot_samples = sizeinfo(1);
startpos = tot_samples / 3;
endpos = 2 * startpos;
 
[y3, Fs] = wavread(hfile, [startpos endpos]);
sound(y3, Fs);

figure(3), plot(y3);