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

  def stalement?
    ! (@board.flatten.include? nil)
  end

  def find_row_winner(row)
    return row[0] if row.uniq.size == 1
  end

  def rows_winner(board)
    winning_player = nil
    board.each do |row|
      winning_player ||= find_row_winner(row)
    end
    winning_player
  end

  def winner
    winning_player = nil
    winning_plyaer ||= rows_winner(@board)
    winning_player ||= rows_winner(@board.transpose)
    return "tie" if stalement?
  end

  def to_s
    # X | O | X
    board_pos = -1
    @board.map do |row|
      row.map do |cell|
        board_pos += 1
        cell.nil? ? board_pos.to_s : cell
      end.join(" | ")
    end.join("\n#{'-' * 9}\n")
  end
end