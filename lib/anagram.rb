class String
  define_method(:anagram) do |*words|
      ref_str = self.split('').sort
      anagrams = []
      words.each do |word|
        if word.split('').sort().join('') == ref_str.join('')
          anagrams.push(word)
        else
        end
      end
      if anagrams.length > 0
        anagrams.join(', ')
      else
        "Not an anagram!"
      end
    end
  end
