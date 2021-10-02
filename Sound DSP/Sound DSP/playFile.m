

function playFile(y,Fs,filename)
% play original
player = audioplayer(y, Fs);
play(player);
pause(5);

wavwrite(y,Fs,filename);
end