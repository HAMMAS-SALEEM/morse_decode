MORSE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(str)
  MORSE.each do |key, value|
    return value.to_s if key == str
  end
end

def decode_word(str)
  message = ''
  str.split(" ").each do |i| 
  message += "#{decode_char(i)}"
  end
  message
end

def decode(str)
  message = []
  str.split("  ").each do |i| 
  message.push("#{decode_word(i)}")
  end
  message.join(" ")
end