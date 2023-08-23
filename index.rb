MORSE_CODE = {
  ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E",
  "..-." => "F", "--." => "G", "...." => "H", ".." => "I", ".---" => "J",
  "-.-" => "K", ".-.." => "L", "--" => "M", "-." => "N", "---" => "O",
  ".--." => "P", "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T",
  "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y",
  "--.." => "Z"
}

def decode_char(param)
  return MORSE_CODE[param]
end

puts decode_char(".-")

def decode_word(paramStr)
  array_Str = paramStr.split(" ")
  word = []
  array_Str.each do |param|
    word.push(decode_char(param))
  end
  return word.join("")
end

puts decode_word("-- -.--")

