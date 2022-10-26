def decode_one_char(morse)
	
  codes= { '1' => '.----', '2' => '..---', '3' => '...--',
  '4' => '....-', '5' => '.....', '6' => '-....',
  '7' => '--...', '8' => '---..', '9' => '----.',
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..',
  'E' => '.', 'F' => '..-.', 'G' => '--.', 'H' => '....',
  'I' => '..', 'J' => '.---', 'K' => '-.-','L' => '.-..',
  'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
  'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
  'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
  'Y' => '-.--', 'Z' => '--..'
  }
    return codes.key(morse)
  end
  
 
  def decode_one_word(word)
    output=''
    arr = word.split(' ') 
    arr.each {|char|
      output += decode_one_char(char)
    }
    return output 
  end
  
  def decode_all(text)
    output=''
    arr = text.split('   ') 
    arr.each {|word|
      output += decode_one_word(word)
  
      unless word.equal?(arr.last)
        output += ' ' 
      end
  
    }
    return output
  end

   
  # decode_one_char('-...')
  # decode_one_word("-- -.--") 
  # decode_all(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
    