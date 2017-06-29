class PhoneNumber

  def initialize(raw_string)
    @raw_string = raw_string
  end

  def number(n or raw_string)
    #method for parsing the raw number string based on the rules in the intructions
    if n.length < 10 || n.length > 11 then p "Bad number: number is either less than 10 or more than 11"
    if n.length == 11 && n.first != 1 then p "Bad number: 11 digit number with no 1"
    if n.length == 11 && n.first == 1 then #trim 1 and use last 10 numbers
    if n.length == 10 then p to_s
    end

  def area_code
    #method to extract the area code from the number

  end

  def to_s
    #method to pretty print (last two tests)
  end
end
