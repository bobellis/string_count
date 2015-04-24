class String
  define_method(:count_words) do |words_to_check|
    target_word = self.strip()
    count = 0
    words_to_check = words_to_check.split()
    words_to_check.each do |word|
      if word = target_word
        count = count + 1
      end
    end
    count
  end
end
