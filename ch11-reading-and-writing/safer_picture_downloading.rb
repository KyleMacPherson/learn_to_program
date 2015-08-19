def pic_downloader
  
Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

pic_names = Dir['F:/**/*.jpg']

pic_names.each do |pic|
  File.exist?(pic)
    if true
      puts "Some of these files already exist, would you like to overwrite?"
    end
      response = gets.chomp
      if response.downcase == "no"
        puts "Exiting program"
        exit
      end
    end

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.'
  
  new_name = if pic < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  
File.rename name, new_name
pic_number += 1
end

puts "Done"

end