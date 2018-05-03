def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, input)
  if (input < 0 || input > board.length-1)
    return false
  end
  if (board[input] == " " || board[input] == "" || board[input] == nil)
    return true 
  else 
    return false
  end 
end

def move(board, input, token = "X")
  if (valid_move?(board, input))
    board[input] = token
  end
end

def input_to_index(input)
  input = input.to_i - 1 
  return input
end

def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  valid_move?(board, input)
  x = false

  if (x == true)
    move(board, input, token = "X")
  else
    return "Invalid move"
  end
  =end
  display_board(board)
end

