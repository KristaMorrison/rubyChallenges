x = 20

x.times do |index|
  puts (index + 1)
end

for duck in 1..20
  puts duck
end

(1..20).each do |duck|
  puts duck
end






x = 21
20.times do
  puts x-= 1
end

20.times do |duck|
  puts 20-duck
end


for duck in 0..19
  puts 20-duck
end

(0..19).each do |duck|
  puts 20-duck
end

def duckValidator duck
  unless (duck > 10 || duck < 1)
    print "Valid"
  else
    print "Invalid"
  end
end


def duckBuzz
  for duck in 1..100
    if duck %15 == 0
      puts duck.to_s + " FizzBuzz"
    elsif duck %5 == 0
      puts duck.to_s + " Buzz"
    elsif duck %3 == 0
      puts duck.to_s + " Fizz"
    else
      puts duck
    end
  end
end

def sum_these_numbers duck, goose
  puts duck + goose
end

def is_even duck
  puts duck%2 == 0
end

words = ["duck", "goose", "cow", "pig", "horse", "sheep", "goat", "chicken", "rooster", "farmer John"]

words.each do |a|
  print a.upcase
end

def otherMethodUser duck, goose
  puts sum_these_numbers(duck, goose)
end
