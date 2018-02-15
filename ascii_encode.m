function bin=ascii_encode(message)
  ascii = toascii(message);
  bin = [];
  for currentletter = 1:length(ascii)
    #yes i know, there is dec2bin, it just does not return a matrix...
    letter = [];
    while ascii(currentletter) > 0
      letter = [rem(ascii(currentletter),2),letter];
      ascii(currentletter) = floor(ascii(currentletter)/2);
    endwhile
    while length(letter) < 8
      letter = [0,letter];
    endwhile
    bin = [bin,letter];
  endfor
endfunction