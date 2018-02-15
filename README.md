# Signal Lab

These files provide functions for gnu octave (and matlab, where compatible) to generate binary-files to be transmitted with a usrp for the crisis communication lecture at seemoo the secure mobile networking department of TU Darmstadt.

## Prerequisites
In order to run this you need to run 'pkg load signal' (hilbert, resample) and  'pkg load ltfat' (normalize) in your octave/matlab command line.
ltfat and signal have to be installed on the machine.

## Script files

Functions are provided by the *.m-files.

### signallab
Is meant to generate the actual files for the lab, so works as a generator script for the lab contents.
An example of how a lab could be structured is present in the comments.

### exportBin32f
exports iq samples taken from an analytical signal into a binary file (32 Bit float).

### generateAMsignal
Generates a simple DSB amplitude modulated signal.

### generateFMsignal
Generates a simple frequency modulated signal.

### generateOOKsignal
Generates a on-off-keyed signal from a binary sequence e.g. used for morse.

### generateBinFSKsignal
Generates a frequency-shift-keyed signal from a binary sequence.

### morse_encode
Creates a binary sequence in morse code from a string.

### generateRectangularsignal
Creates a rectangular signal from a binary sequence.