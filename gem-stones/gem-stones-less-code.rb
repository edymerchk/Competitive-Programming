a = gets.to_i.times.map{gets.chomp}
puts [*'a'..'z'].count{|e|a.all?{|f|f.include?(e)}}