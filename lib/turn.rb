def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end



def valid_move?(board, index)
  if !position_taken?(board,index) && index >= 0 && index <= 8
    true
  else
     false
  end
end



def input_to_index(user_input)
  move_ready = user_input.to_i - 1
  move_ready
end



def move(board, input_to_index, character = "X")
  board[input_to_index] = character
end



def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  possible_move = input_to_index(user_input)
  if valid_move?(board, possible_move) == true && position_taken?(board, possible_move) == false
    move(board, possible_move, character = "X")
    display_board(board)
  else turn(board)
    puts "Invalid move. Please try again."
  end
end
