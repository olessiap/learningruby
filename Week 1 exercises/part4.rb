require "CSV"

name = "COLIN"
CSV.foreach("/Users/Olie/coding/learningruby/part2.csv") do |row|
  if row[0] == name
    puts row[3]
  end
end
