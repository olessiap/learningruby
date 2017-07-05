class PhoneNumber

  def initialize(raw_string)
    @raw_string = raw_string
  end
  def validator(n) #returns 10 digits
    if (n.length < 10 || n.length > 12)  && n[0] != 1 then return '0000000000' end
    parsed_n = n.scan(/\d+/).join #take out all characters return 0-9
    if parsed_n.length == 11 && n[0] == '1'
      return parsed_n[1..-1] ##delete 1st character, return the rest
    elsif parsed_n.length == 10
      return parsed_n
    else
      return '0000000000'
      if n.length > 11 && n[0] != 1 then '0000000000' end
    end
  end

  def area_code(n) #uses numbers to return first 3 numbers
    #method to extract the area code from the number
    #if n.match/\D/.delete then p "took out ()" else p "no match" end
    p validator(n)[0..2]
  end

  def pretty_number(n) #print (area_code) + 3 digits + 4 digits
    #method to pretty print (last two tests)
    p "(#{area_code(n)}) #{validator(n)[2..4]}-#{validator(n)[6..-1]} "
  end
end

# p pretty_number('(123) 456-7890')
# p pretty_number('(987) 654-3210')
# p pretty_number('456.123.7890')
# p pretty_number('123-abc-1234')
# p pretty_number('1a2a3a4a5a6a7a8a9a0a')
# p pretty_number('21234567890')
# p pretty_number('112345678901')
# p pretty_number('1234567890')
# p pretty_number('19876543210')
