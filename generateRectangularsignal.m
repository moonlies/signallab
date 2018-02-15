# takes a binary sequence, the sampling frequency and the length of one symbol,
# and creates a rectangular signal where each 1 in the sequence is represented
# by a 'high' and each 0 is represented by a 'low' of one symbol-length
function waveformvector = generateRectangularsignal(code, samplef, ditlength)
  % make array of samples (1 sample => 1/samplefrequency seconds)
  samplesperdit = samplef*ditlength;
  samplestep = 1/samplef;
  signallength = ditlength*length(code);
  samples = 0:samplestep:signallength-samplestep;
  % create the rectangular signal
  waveformvector = [];
  for currentdit = 1:length(code)
    if code(currentdit)==0
      waveformvector = [waveformvector,zeros(1,samplesperdit)];
    else
      waveformvector = [waveformvector,ones(1,samplesperdit)];
    endif
  endfor
  waveformvector = waveformvector(:);
endfunction