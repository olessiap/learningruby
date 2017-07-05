def sum_to(n)
  if n == 1 then return 1 end
  if n < 1 then return nil end
  n + sum_to(n-1)
end

#p sum_to(1, 2, 3, 4) # 10
p sum_to(1)  # => returns 1
p sum_to(9)  # => returns 45 
p sum_to(-8)  # => returns nil

##################
def add_numbers(a)
  if a.length == 0 then return nil end
  if a.length == 1 then return a[0] end
  return add_numbers(a.drop(1))+a[0]
end

p add_numbers([1,2,3,4]) # => returns 10
p add_numbers([3]) # => returns 3
p add_numbers([-80,34,7]) # => returns -39
p add_numbers([]) # => returns nil

###############
def reverse(str)
  if str.length == 0 then return '' end
  if str.length == 1 then return str end
  if str.length == 2 then return str[-1] + str[0] end
  return str[-1] + reverse(str[1..-2]) + str[0]
end

# Test Cases
p reverse("ha") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di"
p reverse("") # => ""

####################
def flatten(a, results = [])
  a.each do |e|
    #for each element in a
    #add it to results
    if e.is_a? Array
      flatten(e, results)
    else
      results << e
    end
  end
  results
end

p flatten([]) #[]
p flatten([1]) # [1]
p flatten([[1]]) # [1]
p flatten([[1,2,3],2,3,4]) # [1]

####################
# from roman_mapping hash
# if 8, between big_number < 8 > p smaller_number
# find remainder, recurssion the remainder p

$roman_map = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }

def roman_mapping(n, result = '')
  $roman_map.each do |key, value|
    if n >= key
      result << "#{value}"
      n -= key
      roman_mapping(n,result)
    end
  end
  if n == 0 then return result end
end
p roman_mapping(1500)

def fibs(n)

end

fibs(3) # 1, 2
fibs(5) #
