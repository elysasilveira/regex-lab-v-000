def starts_with_a_vowel?(word)
    word.split('').first.scan(/[aeiouAEIOU]/).empty? ? false : true
end

def words_starting_with_un_and_ending_with_ing(text)
  ing_word = text.scan(/\w+ing/)
  #un_word = ing_word.join(' ').scan(/^un/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.scan(/^[A-Z]/) == []
    return false
  else
    if text.scan(/[.?!]$/) == []
      return false
    else
      return true
    end
  end
end

def valid_phone_number?(phone)
  if phone.scan(/\d/).join.length == 10
    return true
  else
    return false
  end
end
