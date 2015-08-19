def playlist

open('playlist.txt', 'w') do |f|    
f.puts Dir['*.mp3'].sort_by{rand}
end 

end
