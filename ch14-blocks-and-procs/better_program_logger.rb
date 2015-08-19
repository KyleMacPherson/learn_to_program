$depth = 0

def log desc, &block

  $space = "  " * $depth
  
  puts $space + "Beginning #{desc} ..."
  $depth += 1
  result = block.call
  $depth -= 1
  puts $space + "#{desc} finished, returning: #{result}"
  
end

  log "outer block" do
    log "some little block" do
      log "some teeny tin blog" do
        "lots of love"
      end
      42
      log "yet another block" do
      "I love indian food"
      end
    end
    true
  end
  
  
 