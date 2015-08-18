class OrangeTree
  
  attr_reader :height, :age

  def initialize
    @age = 0
    @height = 0
    @oranges = 0
  end
  
  def one_year_passes
    @dead = false
    @age += 1
    @height += 10
    @oranges = 0
    
    if age > 9
      puts "Your tree is dead :("
      @dead = true
    end
    
    if age == 5
      puts "Your tree is producing fruit!"
    end
    
    if age > 4 && @dead == false
      @oranges = @age * 2
    else
      @oranges = 0
    end
    
  end
  
  def count_the_oranges
    @oranges
  end
  
  def pick_an_orange
    if @oranges > 0
      @oranges -= 1
      puts "You picked a delicious orange"
    elsif oranges = 0 && @dead = false
      puts "Your tree has no oranges, maybe next year!"
    else
      puts "Your tree is dead."
    end
  end
  
end