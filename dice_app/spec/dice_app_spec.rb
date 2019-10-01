require 'dice_app'

describe Dice do
  subject = Dice.new(5)

  it 'roll dice' do
    # Assert
    expect(subject).to respond_to(:roll)
  end

  it 'get move' do
    # Act
    moves = subject.roll
    rolls = subject.rolls
    # Assert
    expect(rolls).to_not eq(nil)
  end

  it 'moves are within range' do
    # Act
    moves = subject.roll
    rolls = subject.rolls
    # Arrange
    rolls.each do |roll|
      between = roll.between?(1,7)
      expect(between).to eq(true)
    end
  end

  it 'displays rolls' do
    # Assert
    expect(subject).to respond_to(:display_roll)
  end

  it 'displays current score' do
    # Act
    subject.roll
    is_positive = subject.score.positive?
    # Assert
    expect(is_positive).to eq(true)
  end

end
