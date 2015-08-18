require "time"

def grandfather_clock some_proc
  num = Time.now
  some_proc.call((num.hour) % 12)
end

dong = Proc.new do |num|
  puts "Dong!" * num
end