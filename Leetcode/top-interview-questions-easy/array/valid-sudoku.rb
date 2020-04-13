# https://leetcode.com/problems/valid-sudoku/
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/769/

require "pry-byebug"

# @param {Character[][]} board
# @return {Boolean}

def evaluate_row(row)
  hash = {}
  row.each do |e|
    return false if e != "." && hash[e]
    hash[e] = true
  end
  true
end

def is_valid_sudoku(board)
  # build columns
  columns = []
  for i in 0..8
    current_c = []
    for j in 0..8
      current_c << board[j][i]
    end
    columns << current_c
  end

  # build sub-boxes
  boxes = []

  x = 0
  for i in 0..2
    current_box = []
    current_box_2 = []
    current_box_3 = []
    for j in 0..2
      current_box << board[j+x].slice(0, 3)
      current_box_2 << board[j+x].slice(3, 3)
      current_box_3 << board[j+x].slice(6, 3)
    end
    boxes << current_box
    boxes << current_box_2
    boxes << current_box_3
    x += 3
  end

  # evaluate rows and columns
  for i in 0..8
    if !evaluate_row(board[i]) || !evaluate_row(columns[i]) || !evaluate_row(boxes[i].flatten)
      return false
    end
  end
  true
end




input = [
  ["5","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]
]

puts is_valid_sudoku(input)
