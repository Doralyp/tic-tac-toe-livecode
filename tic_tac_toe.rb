require_relative 'board'

board = Board.new

until board.winner
  ['X', 'O'].each do |player|
    puts board
    puts "Player #{player} enter your move (row,col):"
    move = gets.chomp
    row, col = move.split(',').map {|s| s.to_i}
    board.place(player, row, col)
  end
end