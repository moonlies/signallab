# takes the carrier frequency, the sampling frequency, a waveform vector 
# and the desired bandwith and generates an FM signal
function waveformvector=generateFMsignal(carrierfrequency, samplingrate, basebandsignal, bandwith)
  %the length of a single time-step
  timestep = 1/samplingrate; 
  %generate the time-vector representing time-axis; has to be transposed with
  %' because we later need to multiply the signal-samples
  time = (0:timestep:(length(basebandsignal)-1)*timestep)';
  %normalize basebandsignal to adjust frequency shifts to the desired bandwith
  normalizedbbs = normalize(basebandsignal);
  %get frequency shifts from the basebandsignal
  frequencyshifts = normalizedbbs .* (bandwith/2);
  frequency = frequencyshifts .+ carrierfrequency;
  %create complex output signal
  waveformvector = hilbert(cos(2*pi*time.*frequency));
endfunction