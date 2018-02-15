# takes the carrier frequency, the sampling rate, the length of one 'short' 
# and a binary sequence string and generates on-off-keyed morse signal
# the bandwith parameter is needed for the 
function waveformvector=generateOOKsignal(carrierf, samplef, ditlen, bin)
  % binary sequence -> rectangular signal
  rect = generateRectangularsignal(bin, samplef, ditlen);
  % create a static signal of maximum amplitude
  onsignal = ones(1,length(rect))';
  % the rectangular signal is not directly modulated onto the AM carrier
  % because this creates artifacts when transmitting with the usrp; instead the 
  % signal is just turned on and off => on-off-keying
  % could caused by cut off sign waves at the start/end of the 'high'-parts
  waveformvector=generateFMsignal(carrierf,samplef,onsignal,1) .* rect;
endfunction