def first_anagram?(str, search_term)
  create_dictionary(str).include?(search_term)
end

def create_dictionary(str)
  dictionary = []
  str.chars.permutation.each do |combo|
    dictionary << combo.join
  end
return dictionary
end

p first_anagram?("cat", "tac")

def second_anagram?(str, search_term)
  #iterate over str and search_term
  str_arr = str.chars
  term_arr = search_term.chars
    #take 1st e of str_arr
    #compare it to all e in term_arr
    #when there's a match, delete 1st e of str_arr
    until str_arr.empty? && str.include?(search_term)
      c = str_arr[0]
      shift = false
      for j in (0..term_arr.length) do
    # until c == term_arr[i]
        # str_arr.shift
        if c == term_arr[j]
          str_arr.shift
          shift = true
        end
      end
      if shift == false
        return false
      end
    end
  return true
end

#2nd

  #if str[e] = search_term[e] delete one at a time
  #if both.empty? return true

p second_anagram?("ab", "ba")

def third_anagram?(str, search_term)
  str_arr = str.chars
  term_arr = search_term.chars
  if bubble_sort(str_arr) == bubble_sort(term_arr)
    return true
  else
    return false
  end
end


def bubble_sort(arr)
  loop do

  swaped = false

  n = arr.length
  (n-1).times do |e|
    if arr[e] > arr[e+1]
      arr[e], arr[e+1] = arr[e+1], arr[e]
      swaped = true
    end
  end
  break if !swaped #breaks when swaped is false
end
arr
end


p third_anagram?("aba", "bad")


def fourth_anagram?(str, search_term)
hash1 = Hash.new(0)
hash2 = Hash.new(0)
  str.each_char do |word|
    hash1[word] += 1
  end
  search_term.each_char do |term|
    hash2[term] += 1
  end
  if hash1 == hash2
    return true
  end
end
p fourth_anagram?("aab", "aba")

#sad unused hash method  :'(
# def hash_m(str)
#   str_hash = Hash.new
#   p str.uniq
#   str.uniq.each do |e|
#     str_hash[e] = arr.count(e)
#   end
#   p str_hash
# end
#
# p hash_m(["a", "b", "a"])
#p fourth_anagram("aab", "ba")
