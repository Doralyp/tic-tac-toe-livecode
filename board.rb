class Board
  def initialize
    @board = Array.new(3) {Array.new(3, nil)}
  end

  def place(piece, row, col)
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