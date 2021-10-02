function plotSpectrumColor(fscale,spectrum,xrange,color)

%plot the magnitude
subplot(2,1,1)
plot(fscale,abs(spectrum(1:length(fscale))),color);
axis([xrange(1) xrange(2) 0 max(spectrum)+1])
xlabel('Frequency Hz')
ylabel('Module')
%plot the phase
subplot(2,1,2)
phase=angle(spectrum(1:length(fscale)));
plot(fscale,phase,color);
axis([xrange(1) xrange(2) min(phase) max(phase)+1])
xlabel('Frequency Hz')
ylabel('Angle')
