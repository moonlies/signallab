# exportBin takes a column-vector with time-samples and 
# a filename and writes iq-samples in 32bit floating point
# into the file
function exportBin32f(waveformvector, outputfile)
  %open the file for the exported iq-samples
  file = fopen(outputfile,'w');
  %export iq-samples in 32bit float binary
  fwrite(file,[real(waveformvector(:))'; imag(waveformvector(:))'],'float32'); 
  %close the file
  fclose(file); 
endfunction