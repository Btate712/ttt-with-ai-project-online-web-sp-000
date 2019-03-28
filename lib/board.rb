class Board
  attr_accessor :cells

  def initialize
    reset!
  end

  def reset!
    @cells = [" ", " ", " "," ", " ", " "," ", " ", " "]
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]}     1 | 2 | 3 "
    puts "-----------   -----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]}     4 | 5 | 6 "
    puts "-----------   -----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]}     7 | 8 | 9 "
  end

  def position(input)
    @cells[input.to_i - 1]
  end

  def full?
    any_empties = @cells.find { |cell| cell == " " }
    !any_empties
  end

  def turn_count
    @cells.count { |cell| cell != " " }
  end

  def taken?(input)
    @cells[input.to_i - 1] != " "
  end

  def valid_move?(input)
    input.to_i.between?(1, 9) && !taken?(input)
  end

  def update(input, player)
    @cells[input.to_i - 1] = player.token
  end
end
