require 'pry-byebug'

INF = 4611686018427387903

def rows(table, columns)
  table = table.sort do |hash, hash2|
    sorted = false
    for i in 0...columns.size
      if hash[columns[i]] < hash2[columns[i]]
        sorted = true
        break
      end
    end
    sorted
  end
  table.first
end

def test_it(table, column, expected)
  result = rows(table, column)

  if result == expected
    puts "green"
  else
    puts "red,  expected: #{expected}, got: #{result}"
  end
end


table = [
  {"x" => 1, "y" => 0},
  {"x" => 1, "y" => 3}
]

test_it(table, ["x", "y"], {"x" => 1, "y" => 0})

