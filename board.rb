class Board
  BOARD_SIZE = 3

  def initialize
    @board = Array.new(BOARD_SIZE) {Array.new(BOARD_SIZE, nil)}
  end

  def place(piece, position)
    # Check bounds and check for prior placement
    return false if position < 0 || position > BOARD_SIZE**2 - 1
    row, col = position.divmod(BOARD_SIZE)
    return false if @board[row][col]
    @board[row][col] = piece
  end

  def winner
    nil
  end

  def to_s
    # X | O | X
    board_pos = -1
    @board.map do |row|
      row.map do |cell|
        cell.nil? ? board_pos.to_s : cell
        board_pos += 1
      end.join(" | ")
    end.join("\n#{'-' * 9}\n")
  end
end