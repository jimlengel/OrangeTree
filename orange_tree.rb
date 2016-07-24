class OrangeTree
  attr_reader :age, :height, :oranges

  def initialize
    @age = 0
    @height = 0
    @oranges = 0 
  end

  # Define a custom exception class
  class NoOrangesError < StandardError
  end

  def pass_growing_season
    # Any unharvested oranges from the previous season should drop.
    # A tree should age one year.
    @age += 1
    # A tree should grow 2.5 feet taller until it reaches its maximum height, say 25 feet.
    if @height <= 25
      @height += 2.5
    end
    # A tree should bear fruit if it is mature (i.e. at least six years old), say 100 to 300 oranges.
    @oranges = 0
    new_random = Random.new
    @oranges += new_random.rand(100..300)
  end

  
  def mature?
    # Returns true if the tree is old enough to bear fruit (6), false otherwise
    if @age >= 6
      return true
    else
      return false
    end
  end

  def has_oranges?
    # Returns +true+ if there are any oranges on the tree, +false+ otherwise
    if @oranges >=1
      return true
    else
      return false
    end
  end

  def dead?
    # A tree should die at age 100, and we should be able to check if it's dead (#dead?).
    if @age >= 100
      return true
    else
      return false
    end
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange
    # orange-picking logic goes here
    if has_oranges
      @oranges = @oranges - 1
    else
      raise NoOrangesError, "This tree has no oranges" unless self.has_oranges? 
    end
  end
end

tree = OrangeTree.new

# tree.age = 2
p tree.age
tree.pass_growing_season
tree.pass_growing_season
tree.pass_growing_season
p tree.age
p tree.dead?
p tree.mature?
p tree.oranges
