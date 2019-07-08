# https://www.hackerrank.com/challenges/counting-valleys

steps = gets.to_i
route = gets.rstrip.split('')


valleys = 0
level = 0
route.each do |step|
  valleys += 1 if level == 0 && step == "D"

  if step == "U"
    level += 1
  else
    level -= 1
  end
end
puts valleys
