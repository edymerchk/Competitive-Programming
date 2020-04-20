# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return 1 if n == 1

  dp = Array.new(n+1)
  dp[-1]=1
  dp[-2]=1

  for i in (n-2).downto(0)
    dp[i]=dp[i+1]+dp[i+2]
  end
  dp[0]
end