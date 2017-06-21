require "CSV"
#!/Users/Olie/coding/learningruby/

input_array = ARGV

#open file, read and write to it
a = CSV.read("/Users/Olie/coding/learningruby/p022_names.txt")
a.flatten!.sort!

#p aa
alphabet = Hash[("A".."Z").to_a.zip((1..26).to_a)]

total = 0
CSV.open("/Users/Olie/coding/learningruby/part2.csv", "wb") do |csv|
  csv << ["name", "position", "alphavetical value", "name score"]
  a.each do |name|
    name_value = name.chars.map {|pp| alphabet[pp]}.inject(:+)
    place = a.index(name) + 1
    name_score = name_value * place
    total += name_score
    csv << [name, place, name_value, name_score]
  end
end

# p total

#part 4: read

#name(a), position(place), name_value, name_score
