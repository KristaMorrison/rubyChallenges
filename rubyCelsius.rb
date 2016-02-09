class Celsius
  def initialize (temp)
    @temp = temp
  end

  def convert
    (@temp * 1.8 + 32).round.to_s + " degrees F"
  end

  def celsiusString
    @temp.to_s + " degrees C"
  end

  def temp
    @temp
  end

end

myTemp = Celsius.new(0)
# puts myTemp.convert
# puts myTemp.to_s
puts "Enter a tempurature for Monday "
monday = gets.chomp
mondayC = Celsius.new(monday.to_i)
puts "Enter a tempurature for Tuesday "
tuesday = gets.chomp
tuesdayC = Celsius.new(tuesday.to_i)
puts "Enter a tempurature for Wednesday "
wednesday = gets.chomp
wednesdayC = Celsius.new(wednesday.to_i)
puts "Enter a tempurature for Thursday "
thursday = gets.chomp
thursdayC = Celsius.new(thursday.to_i)
puts "Enter a tempurature for Friday "
friday = gets.chomp
fridayC = Celsius.new(friday.to_i)
puts "Enter a tempurature for Saturday "
saturday = gets.chomp
saturdayC = Celsius.new(saturday.to_i)
puts "Enter a tempurature for Sunday "
sunday = gets.chomp
sundayC = Celsius.new(sunday.to_i)

puts "Mon | " + mondayC.celsiusString + " | " + mondayC.convert
puts "Tue | " + tuesdayC.celsiusString + " | " + tuesdayC.convert
puts "Wed | " + wednesdayC.celsiusString + " | " + wednesdayC.convert
puts "Thu | " + thursdayC.celsiusString + " | " + thursdayC.convert
puts "Fri | " + fridayC.celsiusString + " | " + fridayC.convert
puts "Sat | " + saturdayC.celsiusString + " | " + saturdayC.convert
puts "Sun | " + sundayC.celsiusString + " | " + sundayC.convert
