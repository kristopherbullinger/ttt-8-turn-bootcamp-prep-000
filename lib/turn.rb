def display_board(board)
  puts " #{board[0]} |  #{board[1]} |  #{board[2]} "
  puts 
end

def valid_move? (board, input)
  input -= 1 
  if (input < 0 || input > board.length-1)
    return "Invalid move"
  end
  if (board[input] == " " || board[input] == "" || board[input] == nil)
    return true 
  else 
    return false 
  end 
end

def move(board, input, token = "X")
  if (valid_move?)
    board[input-1] = token
  end
end
