  # > caesar_cipher("What a string!", 5)
  # => "Bmfy f xywnsl!"
 # convert to ascii. indexes + shift. convert back to letters.

def symbol?(char)
  if [" ", ",", ".", "!", "?", "&"].include?(char)
    true
  else
    false
  end
end


def caesar_cipher(text, shift)
  shift_amount = shift % 26
  ascii_list = []

  text.each_char do |char|
    if symbol?(char)
      ascii_list.push(char)
    else
      ascii_list.push(char.ord)
    end
  end

  shifted_list = ascii_list.map do |code| 
    if symbol?(code)
      code
    else
      if (code + shift_amount).between?(65, 90) || (code + shift_amount).between?(97, 122)
        code + shift_amount
      else
        if code.between?(65, 90)
          (code + shift_amount) - 90 + 64
        elsif code.between?(97, 122)
          (code + shift_amount) - 122 + 96
        end
      end
    end
  end

  shifted_list.map { |code| code.chr }.join("")
end

p caesar_cipher("i love you.", 22)