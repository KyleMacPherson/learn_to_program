def profile block_description, &block
  
  profile_status = true
  
  if profile_status == true
    start = Time.new
  
    block. call
    speed = Time.new - start
    p "block_description took #{speed} to run"
  else
    block.call
  end
  
end