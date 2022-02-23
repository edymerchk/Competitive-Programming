def reconstruct_alphabet(words)
  result = []
  # Put your code here
  alf = {}

  i = 0
  atleast=true
  while(atleast)
      atleast = false
      words.each do |word|
          if word[i] != nil
              atleast = true
          else
              next
          end
          if alf[word[i]] == nil && word[i] != nil
              result << word[i]
              alf[word[i]] = true
          end
      end
      i+=1
  end

  # Return the result, do not change the structure
  return result
end

words = [
  "ccda",
  "ccbk",
  "cd",
  "a",
  "ab"
]

puts "#{reconstruct_alphabet(words)}"