=begin
  Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
    > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  > substrings("below", dictionary)
  => { "below" => 1, "low" => 1 }

=end



def substrings(words, dictionary)
  substrings = {}

  word_list = words.gsub(",", "").gsub("!", "").gsub("'s", "").gsub("?", "").downcase.split(" ")

  word_list.each do |word|
    dictionary.each do |dictionary_word|
      if word.include?(dictionary_word)
        if substrings[dictionary_word] == nil
          substrings[dictionary_word] = 1
        else
          substrings[dictionary_word] += 1
        end
      end
    end
  end

  substrings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
