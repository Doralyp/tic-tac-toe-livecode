class Board
  BOARD_SIZE = 3

  def initialize
    @board = Array.new(BOARD_SIZE) {Array.new(BOARD_SIZE, nil)}
  end

  def place(piece, row, col)
    # Check bounds and check for prior placement
    return false if row > BOARD_SIZE - 1 || col > BOARD_SIZE - 1 || row < 0 || col < 0 || @board[row][col]
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