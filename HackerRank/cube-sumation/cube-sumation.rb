class Array3
 def initialize
   @store = [[[]]]
 end

 def [](a,b,c)
  if @store[a]==nil ||
    @store[a][b]==nil ||
    @store[a][b][c]==nil
   return 0
  else
   return @store[a][b][c]
  end
 end

 def []=(a,b,c,x)
  @store[a] = [[]] if @store[a]==nil
  @store[a][b] = [] if @store[a][b]==nil
  @store[a][b][c] = x
 end
end

def is_num?(str)
  !!Integer(str)
rescue ArgumentError, TypeError
  false
end

t = gets.chomp.to_i
t.times do
  array = Array3.new
  n, m = gets.split.map(&:to_i)
  m.times do
    l = gets.split.map{|e| is_num?(e) ? e.to_i : e}
    if l[0] == "UPDATE"
      array[l[1]-1,l[2]-1,l[3]-1]= l[4]
    else
      qres = 0
      for x in (l[1]-1)..(l[4]-1)
        for y in (l[2]-1)..(l[5]-1)
          for z in (l[3]-1)..(l[6]-1)
            qres += array[x,y,z]
          end
        end
      end
      puts qres
    end
  end
end
