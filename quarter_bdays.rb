months = ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"]

  puts "what is your bday month?"
  bday_month = gets.chomp.upcase
  puts "what day of the month?"
  bday_day = gets.chomp.upcase
  months.map.with_index do |m, i|
    if m == bday_month
        puts "yassss, your quarter bday is: " + months[i+3].to_s + " #{bday_day}th"
    end
  end
  # puts quarter_bday
  # puts "your quarter bday is #{quarter_bday}"
  # puts "hooooray!!"
