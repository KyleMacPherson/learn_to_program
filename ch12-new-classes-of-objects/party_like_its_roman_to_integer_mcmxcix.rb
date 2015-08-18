def roman_to_integer roman
  
  roman.upcase!
  array = roman.split""
  num = 0
  x = -1
  
  numbers = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1
    }
  
  loop do
    break if numbers[array[x]] == nil
    if numbers[array[x-1]] == nil || numbers[array[x]] < numbers[array[x - 1]]
      num += numbers[array[x]]
      x -= 1
    else  
      num += numbers[array[x]] - numbers[array[x-1]]
      x -= 2
    end
  end
  
  p num
    
end