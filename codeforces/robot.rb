# require 'pry-byebug'

# C. Yet Another Walking Robot
t = gets.chomp.to_i
t.times do
  n = gets.chomp.to_i
  steps = {"0-0" => 0}
  x = y = 0
  line = gets.chomp.split('')
  found = false
  pos =[]
  min_pair = nil
  print_pair = nil
  line.each_with_index do |e, idx|
    x -= 1 if e == "L"
    x += 1 if e == "R"
    y += 1 if e == "U"
    y -= 1 if e == "D"

    if steps["#{x}-#{y}"]
      val = steps["#{x}-#{y}"]
      steps["#{x}-#{y}"] = idx
      val += 1 if val !=0
      if min_pair.nil?
        min_pair = idx+1-val+1
        print_pair = "#{val+1} #{idx+1}"
      else
        if idx+1-val+1 < min_pair
          min_pair = idx+1-val+1
          print_pair = "#{val+1} #{idx+1}"
        end
      end
      found = true
    else
      steps["#{x}-#{y}"] = idx
    end
  end
  if found
    puts print_pair
  else
    puts "-1"
  end
end
