board=[" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input_integer=input.to_i
  index=input_integer-1
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index>=0 && index<=8
    true
  else
    nil
  end
end

def position_taken?(board, index)
  if board[index]==" " || board[index]=="" || board[index]==nil
    false
  else
    true
  end
end

def move(board, index, value = "X")
  board[index]=value
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  if valid_move?(board, index)
    move(board, index, value="X")
  else
    turn(board)
  end
end
