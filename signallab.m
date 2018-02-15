function signallab

  #an example of a possible configuration for the signal lab

  #audio-file gets loaded and resampled up, so the scripts work with
  #sampling-rates used by the transmitter script 
  #samplingrate = 200000;
  #lipsum = resample(normalize(audioread('Jakob Bienenhalm - Lipsum I.wav')),samplingrate,48000);
  #koordinaten = resample(normalize(audioread('koordinatenmornewegstrasse.wav')),samplingrate,48000);

  #ammod = generateAMsignal(428000000, samplingrate, koordinaten, 8);
  #exportBin32f(ammod, 'binfiles/ammod.bin');
  
  #fmmod = generateFMsignal(436000000, samplingrate, lipsum, 300);
  #exportBin32f(fmmod,'binfiles/fmmod.bin');
  
  #morseook = generateOOKsignal(439000000, samplingrate, 0.3, morse_encode('look for survivors: 3.1.01, 4.3.01'));
  #exportBin32f(morseook, 'binfiles/morseook.bin');
  
  #morsefsk = generateBinFSKsignal(43300000, 10000, samplingrate, 0.3, morse_encode('there is no cloud, just other peoples computers'));
  #exportBin32f(morsefsk, 'binfiles/morsefsk.bin');
  
  #asciiook = generateOOKsignal(43000000, samplingrate, 0.3, ascii_encode('Zombies!!!'));
  #exportBin32f(asciiook, 'binfiles/asciiook.bin');

endfunction