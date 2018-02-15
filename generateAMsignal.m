#works but does strange things: many neighbouring appearances, 
#lsb can be demodulated with usb and vice versa however they sound differently

# takes the desired carriers frequency, the signals sampling rate 
# the basebandsignal (as a column vector of samples) and the intensity
# (factor to tweak the ouptut strength, 10 is reccommended) and returns a column
# vector containing the samples of the input-signal amplitude-modulated onto
# the carrier frequency
function waveformvector=generateAMsignal(carrierfrequency,samplingrate,basebandsignal,intensity)
  %add dc offset to the baseband to prevent overmodulation
  dcoffset = max(basebandsignal);
  %the length of a single time-step
  timestep = 1/samplingrate; 
  %generate the time-vector representing time-axis; has to be transposed with
  %' because we later need to multiply the signal-samples
  time = (0:timestep:(length(basebandsignal)-1)*timestep)';  
  %generate the transmission waveform as a vector of samples
  waveformvector = cos(time .* 2*pi*carrierfrequency) .* (basebandsignal .* intensity .+ dcoffset); 
endfunction
