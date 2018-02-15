# these files provide functions for gnu octave (and matlab, where compatible)
# to generate binary-files to be transmitted with a
# usrp for the crisis communication lecture at seemoo
# the secure mobile networking department of TU Darmstadt

# in order to run this you need to run 'pkg load signal' (hilbert, resample) and 
# 'pkg load ltfat' (normalize) in your octave/matlab command line
# ltfat and signal have to be installed on the machine

# functions are provided by the *.m-files in the signal lab directory

# signallab: is meant to generate the actual files for the lab, so works as a
# generator script for the lab contents

# showDiagramm: is a small (yet to be fixed) tool to look at a signal from
# within octave; helpfull for debugging

# exportBin32f: exports iq samples taken from an analytical signal
# into a binary file (32 Bit float)

# generateAMsignal: generates a simple DSB amplitude modulated signal

# generateFMsignal: generates a simple frequency modulated signal

# generateOOKsignal: generates a on-off-keyed signal from a binary sequence
# e.g. used for morse

# generateBinFSKsignal: generates a frequency-shift-keyed signal from a binary
# sequence 

# morse_encode: creates a binary sequence in morse code from a string

# generateRectangularsignal: creates a rectangular signal from a binary sequence

function signallab
  #audio-file gets loaded and resampled up, so the scripts work with
  #sampling-rates used by the transmitter script 
  samplingrate = 200000;
  lipsum = resample(normalize(audioread('Jakob Bienenhalm - Lipsum I.wav')),samplingrate,48000);
  koordinaten = resample(normalize(audioread('koordinatenmornewegstrasse.wav')),samplingrate,48000);

  ammod = generateAMsignal(428000000, samplingrate, koordinaten, 8);
  exportBin32f(ammod, 'binfiles/ammod.bin');
  
  fmmod = generateFMsignal(436000000, samplingrate, lipsum, 300);
  exportBin32f(fmmod,'binfiles/fmmod.bin');
  
  morseook = generateOOKsignal(439000000, samplingrate, 0.3, morse_encode('look for survivors: 3.1.01, 4.3.01'));
  exportBin32f(morseook, 'binfiles/morseook.bin');
  
  morsefsk = generateBinFSKsignal(43300000, 10000, samplingrate, 0.3, morse_encode('there is no cloud, just other peoples computers'));
  exportBin32f(morsefsk, 'binfiles/morsefsk.bin');
  
  asciiook = generateOOKsignal(43000000, samplingrate, 0.3, ascii_encode('Zombies!!!'));
  exportBin32f(asciiook, 'binfiles/asciiook.bin');
  
  #showDiagramm(asciiook, samplingrate);

endfunction