# takes the carrier frequency, the frequency shift the sampling rate, the length of one 'short' 
# and a binary sequence and generates a frequency-shift-keyed signal
function waveformvector=generateBinFSKsignal(carrierf, shift, samplef, ditlen, bin)
  %calculate the number of samples needed for one 'short'
  samplesperdit = samplef*ditlen;
  %length of a single time-step between samples
  timestep = 1/samplef;
  %preparations for the loop
  waveformvector = [];
  %go through the binary sequence
  for currentdit = 1:length(bin) 
    if bin(currentdit) == 1
      frequency = carrierf + shift;
    elseif bin(currentdit) == 0
      frequency = carrierf;
    endif
    %generate the time-vector representing time-axis; has to be transposed with
    %' because we later need to multiply the signal-samples
    time = ((currentdit-1)*samplesperdit*timestep:timestep:currentdit*samplesperdit*timestep)';  
    waveformvector = [waveformvector,hilbert(cos(2*pi*time.*frequency))];
  endfor
endfunction