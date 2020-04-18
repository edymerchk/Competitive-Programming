# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  stones.sort!.reverse!

  while stones.size > 1
    if stones[0]==stones[1]
      stones.slice!(0..1)
    else
      stones[1] = stones[0] - stones[1]
      stones.slice!(0)
      stones.sort!.reverse!
    end
  end

  stones.last || 0
end