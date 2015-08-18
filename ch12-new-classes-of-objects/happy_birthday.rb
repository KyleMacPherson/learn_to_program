def happy_birthday
  
  puts "What year were you born in?"
  year = gets.chomp
  
  puts "What month were you born in?"
  month = gets.chomp
  
  puts "What day of the month were you born on?"
  day = gets.chomp
  
  y = 1
  
  time_now = Time.new
  
  loop do
    puts "Spank!"
    y +=1
    break if Time.local((year.to_i + y), month.to_i, day.to_i) > time_now
  end
  
end