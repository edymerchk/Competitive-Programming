require 'pry-byebug'

INF = 4611686018427387903

def min_by_column(table, column)
  return -1 if table.size == 0

  min_val = INF
  min_row = nil

  for i in 0...table.size
    if table[i][column] && table[i][column] <= min_val
      min_val= table[i][column]
      min_row = i
    elsif table[i][column] == nil && 0 <= min_val
      min_val= 0
      min_row = i
    end
  end
  table[min_row]
end


def test_it(table, column, expected)
  result = min_by_column(table, column)

  if result == expected
    puts "green"
  else
    puts "red,  expected: #{expected}, got: #{result}"
  end
end


table = [
  {"a" => 1, "b" => 2},
  {"a" => 3}
]

test_it(table, "b", {"a" => 3})


table = [
  {"a" => 1, "b" => 2},
  {"a" => 9, "b" => -2}
]

test_it(table, "b", {"a" => 9, "b" => -2})

table = []

test_it(table, "b", -1)