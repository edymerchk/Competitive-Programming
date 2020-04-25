# @param {Integer[]} cells
# @param {Integer} n
# @return {Integer[]}
def prison_after_n_days(cells, n)

  return cells if n == 0

  n = (n%14)+14

  if n == 0
    cells[0]=0
    cells[-1]=0
    return cells
  end

  n.times do
    new_cells = Array.new(cells.size)
    new_cells[0]=0
    new_cells[-1]=0
    for i in 1..cells.size-2
      if cells[i+1]==cells[i-1]
        new_cells[i]=1
      else
        new_cells[i]=0
      end
    end
    cells = new_cells
  end
  cells
end


# puts "#{prison_after_n_days([0,1,0,1,1,0,0,1],7)}"
# 100.times do |i|
#   puts "#{prison_after_n_days([0,1,0,1,1,0,0,1],i+1)} -> #{i+1}"
# end


puts "#{prison_after_n_days([0,1,0,1,1,0,0,1],826)}"

# [0, 1, 1, 0, 1, 1, 1, 0]