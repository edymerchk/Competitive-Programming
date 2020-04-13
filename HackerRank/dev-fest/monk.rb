t = gets.chomp.to_i

LARGE = 1000000

t.times do
  n, k = gets.chop.split.map(&:to_i)
  a = Array.new(n) { Array.new(n) }
  for i in 0...n
    a[i] = gets.chomp.split(" ").map(&:to_i)
  end

  res = 0
  k.times do
    acc_rows, acc_cols, idx_cols, idx_rows = 0, 0, 0, 0
    min_rows, min_cols = LARGE, LARGE

    n.times do |i|
      j=0
      while j< (n-1)
        acc_rows=a[i][j]+a[i][j+1]
        j+=1
      end
      if acc_rows < min_rows
        min_rows = acc_rows
        idx_rows = i
      end
    end
    # puts "min_rows: #{min_rows}"
    # puts "idx_rows: #{idx_rows}"

    n.times do |i|
      m = 0
      while(m < n-1)
        acc_cols=a[m][i]+a[m+1][i]
        m +=1
      end
      if acc_cols < min_cols
        min_cols = acc_cols
        idx_cols = i
      end
    end

    # puts "min_cols: #{min_cols}"
    # puts "idx_cols: #{idx_cols}"

    if min_rows < min_cols
      u_rows=0
      res += min_rows
      while u_rows < n
        a[idx_rows][u_rows] += 1
        u_rows += 1
      end
    else
      u_cols=0
      res += min_cols
      while u_cols < n
        a[u_cols][idx_cols]+=1
        u_cols+=1
      end
    end
    acc_rows, acc_cols, idx_cols, idx_rows = 0, 0, 0, 0
  end
  puts res
end
