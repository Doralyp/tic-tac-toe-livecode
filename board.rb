class Board
  BOARD_SIZE = 3

  def initialize
    @board = Array.new(BOARD_SIZE) {Array.new(BOARD_SIZE, nil)}
  end

  def place(piece, position)
    # Check bounds and check for prior placement
    return false if position < 0 || position > BOARD_SIZE**2 - 1

    @board[row][col] = piece
  end

  def winner
    nil
  end

  def to_s
    # X | O | X
    @board.map do |row|
      row.map {|cell| cell.nil? ? " " : cell}.join(" | ")
    end.join("\n#{'-' * 9}\n")
  end
end