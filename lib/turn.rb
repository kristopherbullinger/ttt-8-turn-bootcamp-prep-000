def display_board(board)
  puts board
end

def valid_move? (board, input)
  input -= 1 
  if (input < 0 || input > board.length -1)
    return "Invalid move"
  end
  
end
