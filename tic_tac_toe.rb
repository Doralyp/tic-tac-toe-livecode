require_relative 'board'

board = Board.new

until board.winner
  ['X', 'O'].each do |player|
    puts board
    valid_move = false
    until valid_move
      puts "Player #{player} enter your move:"
      move = gets.chomp
      unless move.match(/\d/)
        puts "Enter a valid move"
        next
      end
      position = move.to_i
      valid_move = board.place(player, position)
      puts "Invalid move" unless valid_move
    end
  end
end