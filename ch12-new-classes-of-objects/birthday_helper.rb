def birthday_helper
  
  birthdays = {}
  
  File.read('birthdays').each_line do |line|
    name, date, year = line.split(",")
    month, day = date.split(" ")
    
    month_to_i = {
      "Jan" => 1,
      "Feb" => 2,
      "Mar" => 3,
      "Apr" => 4,
      "May" => 5,
      "Jun" => 6,
      "Jul" => 7,
      "Aug" => 8,
      "Sep" => 9,
      "Oct" => 10,
      "Nov" => 11,
      "Dec" => 12, 
    }
    
    birthdays[name] = Time.new(year, month, day)
      
  end
  
  puts "Name please"
  name = gets.chomp
  puts "#{name}'s birthday is #{birthdays[name]}"


end