#Celsius Class
class Celsius
#Initializes the temp
  def initialize (temp)
    @temp = temp
  end
#converts the temp from celsius to fahrenheit and returns the string
  def convert
    (@temp * 1.8 + 32).round.to_s + " degrees F"
  end
#converting the celsius temp to a string
  def celsiusString
    @temp.to_s + " degrees C"
  end
#returns the temp - used as a trouble shooting tool - not used otherwise.
  def temp
    @temp
  end
end


#Gets the tempurature input from user, and creates a new instance of the celsius class.
# puts "Enter a tempurature for Monday "
# monday = gets.chomp
# mondayC = Celsius.new(monday.to_i)
# puts "Enter a tempurature for Tuesday "
# tuesday = gets.chomp
# tuesdayC = Celsius.new(tuesday.to_i)
# puts "Enter a tempurature for Wednesday "
# wednesday = gets.chomp
# wednesdayC = Celsius.new(wednesday.to_i)
# puts "Enter a tempurature for Thursday "
# thursday = gets.chomp
# thursdayC = Celsius.new(thursday.to_i)
# puts "Enter a tempurature for Friday "
# friday = gets.chomp
# fridayC = Celsius.new(friday.to_i)
# puts "Enter a tempurature for Saturday "
# saturday = gets.chomp
# saturdayC = Celsius.new(saturday.to_i)
# puts "Enter a tempurature for Sunday "
# sunday = gets.chomp
# sundayC = Celsius.new(sunday.to_i)
#
# #displays the tempurature in both celsius and fahrenheit by calling the celsiusString method and the convert method.
# puts "Mon | " + mondayC.celsiusString + " | " + mondayC.convert
# puts "Tue | " + tuesdayC.celsiusString + " | " + tuesdayC.convert
# puts "Wed | " + wednesdayC.celsiusString + " | " + wednesdayC.convert
# puts "Thu | " + thursdayC.celsiusString + " | " + thursdayC.convert
# puts "Fri | " + fridayC.celsiusString + " | " + fridayC.convert
# puts "Sat | " + saturdayC.celsiusString + " | " + saturdayC.convert
# puts "Sun | " + sundayC.celsiusString + " | " + sundayC.convert

#This is the better way to do this - create a new array and push the users input of tempurature into new array.
week = []

#Used the times loop 7 times as there are 7 days in the week. Push a new celsius object into the week array.
7.times do
  puts "Enter a tempurature"
  answer = gets.chomp
  week.push(Celsius.new(answer.to_i))
end

#Created a new array of days of the week
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
#Loop through each day of the week and use the corresponding value and index from the week array to print the results. 
days.each_with_index do |v, i|
  puts v.to_s + " | " + week[i].celsiusString + " | " + week[i].convert
end
