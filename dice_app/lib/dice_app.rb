class Dice
  attr_accessor :rolls, :num_of_rolls
  def initialize(num_of_dice)
    @num_of_rolls = num_of_dice
    @rolls = []
  end

  def roll
    num_of_rolls.times do
      rolls << rand(1..7)
    end
  end

  def display_roll
    rolls
  end

  def score
    current_score = 0
    rolls.each do |roll|
      current_score += roll
    end
    current_score
  end

end

# dice = Dice.new(5)
# dice.roll
# puts dice.score
