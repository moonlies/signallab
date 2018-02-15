# takes the message string and generates a binary sequency which can
# then be used with different modulations (OOK, FSK-CW ...) etc.
function morsecode = morse_encode(message)
  morsecode = [];
  % go through all characters
  for currentletter = 1:length(message)
    if currentletter > 1 %do not add letter or word padding at the beginning
      morsecode = [morsecode,0,0,0]; % add letter padding
      if strcmp(message(currentletter), " ") 
        morsecode = [morsecode,0,0,0,0]; % add word padding (3 (letter) + 4 = 7)
        continue;
      endif
    endif
    % in the following, every sign in the international alphabet 
    % (https://de.wikipedia.org/wiki/Morsezeichen) is encoded
    % unknown characters will be skipped
    #A
    if or(strcmp(message(currentletter), "a"), strcmp(message(currentletter), "A"))
      morsecode = [morsecode,1,0,1,1,1];
      continue;
    endif
    #B
    if or(strcmp(message(currentletter), "b"), strcmp(message(currentletter), "B"))
      morsecode = [morsecode,1,1,1,0,1,0,1,0,1];
      continue;
    endif
    #C
    if or(strcmp(message(currentletter), "c"), strcmp(message(currentletter), "C"))
      morsecode = [morsecode,1,1,1,0,1,0,1,1,1,0,1];
      continue;
    endif
    #D
    if or(strcmp(message(currentletter), "d"), strcmp(message(currentletter), "D"))
      morsecode = [morsecode,1,1,1,0,1,0,1];
      continue;
    endif
    #E
    if or(strcmp(message(currentletter), "e"), strcmp(message(currentletter), "E"))
      morsecode = [morsecode,1];
      continue;
    endif
    #F
    if or(strcmp(message(currentletter), "f"), strcmp(message(currentletter), "F"))
      morsecode = [morsecode,1,0,1,0,1,1,1,0,1];
      continue;
    endif
    #G
    if or(strcmp(message(currentletter), "g"), strcmp(message(currentletter), "G"))
      morsecode = [morsecode,1,1,1,0,1,1,1,0,1];
      continue;
    endif
    #H
    if or(strcmp(message(currentletter), "h"), strcmp(message(currentletter), "H"))
      morsecode = [morsecode,1,0,1,0,1,0,1];
      continue;
    endif
    #I
    if or(strcmp(message(currentletter), "i"), strcmp(message(currentletter), "I"))
      morsecode = [morsecode,1,0,1];
      continue;
    endif
    #J
    if or(strcmp(message(currentletter), "j"), strcmp(message(currentletter), "J"))
      morsecode = [morsecode,1,0,1,1,1,0,1,1,1,0,1,1,1];
      continue;
    endif
    #K
    if or(strcmp(message(currentletter), "k"), strcmp(message(currentletter), "K"))
      morsecode = [morsecode,1,1,1,0,1,0,1,1,1];
      continue;
    endif
    #L
    if or(strcmp(message(currentletter), "l"), strcmp(message(currentletter), "L"))
      morsecode = [morsecode,1,0,1,1,1,0,1,0,1];
      continue;
    endif
    #M
    if or(strcmp(message(currentletter), "m"), strcmp(message(currentletter), "M"))
      morsecode = [morsecode,1,1,1,0,1,1,1];
      continue;
    endif
    #N
    if or(strcmp(message(currentletter), "n"), strcmp(message(currentletter), "N"))
      morsecode = [morsecode,1,1,1,0,1,0];
      continue;
    endif
    #O
    if or(strcmp(message(currentletter), "o"), strcmp(message(currentletter), "O"))
      morsecode = [morsecode,1,1,1,0,1,1,1,0,1,1,1];
      continue;
    endif
    #P
    if or(strcmp(message(currentletter), "p"), strcmp(message(currentletter), "P"))
      morsecode = [morsecode,1,0,1,1,1,0,1,1,1,0,1];
      continue;
    endif
    #Q
    if or(strcmp(message(currentletter), "q"), strcmp(message(currentletter), "Q"))
      morsecode = [morsecode,1,1,1,0,1,1,1,0,1,0,1,1,1];
      continue;
    endif
    #R
    if or(strcmp(message(currentletter), "r"), strcmp(message(currentletter), "R"))
      morsecode = [morsecode,1,0,1,1,1,0,1];
      continue;
    endif
    #S
    if or(strcmp(message(currentletter), "s"), strcmp(message(currentletter), "S"))
      morsecode = [morsecode,1,0,1,0,1];
      continue;
    endif
    #T
    if or(strcmp(message(currentletter), "t"), strcmp(message(currentletter), "T"))
      morsecode = [morsecode,1,1,1];
      continue;
    endif
    #U
    if or(strcmp(message(currentletter), "u"), strcmp(message(currentletter), "U"))
      morsecode = [morsecode,1,0,1,0,1,1,1];
      continue;
    endif
    #V
    if or(strcmp(message(currentletter), "v"), strcmp(message(currentletter), "V"))
      morsecode = [morsecode,1,0,1,0,1,0,1,1,1];
      continue;
    endif
    #W
    if or(strcmp(message(currentletter), "w"), strcmp(message(currentletter), "W"))
      morsecode = [morsecode,1,0,1,1,1,0,1,1,1];
      continue;
    endif
    #X
    if or(strcmp(message(currentletter), "x"), strcmp(message(currentletter), "X"))
      morsecode = [morsecode,1,1,1,0,1,0,1,0,1,1,1];
      continue;
    endif
    #Y
    if or(strcmp(message(currentletter), "y"), strcmp(message(currentletter), "Y"))
      morsecode = [morsecode,1,1,1,0,1,0,1,1,1,0,1,1,1];
      continue;
    endif
    #Z
    if or(strcmp(message(currentletter), "z"), strcmp(message(currentletter), "Z"))
      morsecode = [morsecode,1,1,1,0,1,1,1,0,1,0,1];
      continue;
    endif
    #1
    if strcmp(message(currentletter), "1")
      morsecode = [morsecode,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1];
      continue;
    endif
    #2
    if strcmp(message(currentletter), "2")
      morsecode = [morsecode,1,0,1,0,1,1,1,0,1,1,1,0,1,1,1];
      continue;
    endif
    #3
    if strcmp(message(currentletter), "3")
      morsecode = [morsecode,1,0,1,0,1,0,1,1,1,0,1,1,1];
      continue;
    endif
    #4
    if strcmp(message(currentletter), "4")
      morsecode = [morsecode,1,0,1,0,1,0,1,0,1,1,1];
      continue;
    endif
    #5
    if strcmp(message(currentletter), "5")
      morsecode = [morsecode,1,0,1,0,1,0,1,0,1];
      continue;
    endif
    #6
    if strcmp(message(currentletter), "6")
      morsecode = [morsecode,1,1,1,0,1,0,1,0,1,0,1];
      continue;
    endif
    #7
    if strcmp(message(currentletter), "7")
      morsecode = [morsecode,1,1,1,0,1,1,1,0,1,0,1,0,1];
      continue;
    endif
    #8
    if strcmp(message(currentletter), "8")
      morsecode = [morsecode,1,1,1,0,1,1,1,0,1,1,1,0,1,0,1];
      continue;
    endif
    #9
    if strcmp(message(currentletter), "9")
      morsecode = [morsecode,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1];
      continue;
    endif
    #0
    if strcmp(message(currentletter), "0")
      morsecode = [morsecode,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1];
      continue;
    endif
    #Å
    if strcmp(message(currentletter), "Å")
      morsecode = [morsecode,1,0,1,1,1,0,1,1,1,0,1,0,1,1,1];
      continue;
    endif
    #Ä
    if or(strcmp(message(currentletter), "ä"), strcmp(message(currentletter), "Ä"))
      morsecode = [morsecode,1,0,1,1,1,0,1,0,1,1,1];
      continue;
    endif
    #È
    if strcmp(message(currentletter), "È")
      morsecode = [morsecode,1,0,1,1,1,0,1,0,1,0,1,1,1];
      continue;
    endif
    #É
    if strcmp(message(currentletter), "É")
      morsecode = [morsecode,1,0,1,0,1,1,1,0,1,0,1];
      continue;
    endif
    #Ö
    if or(strcmp(message(currentletter), "ö"), strcmp(message(currentletter), "Ö"))
      morsecode = [morsecode,1,1,1,0,1,1,1,0,1,1,1,0,1];
      continue;
    endif
    #Ü
    if or(strcmp(message(currentletter), "ü"), strcmp(message(currentletter), "Ü"))
      morsecode = [morsecode,1,0,1,0,1,1,1,0,1,1,1];
      continue;
    endif
    #ß
    if strcmp(message(currentletter), "ß")
      morsecode = [morsecode,1,0,1,0,1,0,1,1,1,0,1,1,1,0,1,0,1];
      continue;
    endif
    #Ñ
    if strcmp(message(currentletter), "Ñ")
      morsecode = [morsecode,1,1,1,0,1,1,1,0,1,0,1,1,1,0,1,1,1];
      continue;
    endif
    #.
    if strcmp(message(currentletter), ".")
      morsecode = [morsecode,1,0,1,1,1,0,1,0,1,1,1,0,1,0,1,1,1];
      continue;
    endif
    #,
    if strcmp(message(currentletter), ",")
      morsecode = [morsecode,1,1,1,0,1,1,1,0,1,0,1,0,1,1,1,0,1,1,1];
      continue;
    endif
    #:
    if strcmp(message(currentletter), ":")
      morsecode = [morsecode,1,1,1,0,1,1,1,0,1,1,1,0,1,0,1,0,1];
      continue;
    endif
    #;
    if strcmp(message(currentletter), ";")
      morsecode = [morsecode,1,1,1,0,1,0,1,1,1,0,1,0,1,1,1,0,1];
      continue;
    endif
    #?
    if strcmp(message(currentletter), "?")
      morsecode = [morsecode,1,0,1,0,1,1,1,0,1,1,1,0,1,0,1];
      continue;
    endif
    #-
    if strcmp(message(currentletter), "-")
      morsecode = [morsecode,1,1,1,0,1,0,1,0,1,0,1,0,1,1,1];
      continue;
    endif
    #_
    if strcmp(message(currentletter), "_")
      morsecode = [morsecode,1,0,1,0,1,1,1,0,1,1,1,0,1,0,1,1,1];
      continue;
    endif
    #(
    if strcmp(message(currentletter), "(")
      morsecode = [morsecode,1,1,1,0,1,0,1,1,1,0,1,1,1,0,1];
      continue;
    endif
    #)
    if strcmp(message(currentletter), ")")
      morsecode = [morsecode,1,1,1,0,1,0,1,1,1,0,1,1,1,0,1,0,1,1,1];
      continue;
    endif
    #'
    if strcmp(message(currentletter), "'")
      morsecode = [morsecode,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1];
      continue;
    endif
    #=
    if strcmp(message(currentletter), "=")
      morsecode = [morsecode,1,1,1,0,1,0,1,0,1,0,1,1,1];
      continue;
    endif
    #+
    if strcmp(message(currentletter), "+")
      morsecode = [morsecode,1,0,1,1,1,0,1,0,1,1,1,0,1];
      continue;
    endif
    #/
    if strcmp(message(currentletter), "/")
      morsecode = [morsecode,1,1,1,0,1,0,1,0,1,1,1,0,1];
      continue;
    endif
    #@
    if strcmp(message(currentletter), "@")
      morsecode = [morsecode,1,0,1,1,1,0,1,1,1,0,1,0,1,1,1,0,1];
      continue;
    endif
  endfor
endfunction

