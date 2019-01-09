#puts "test"

=begin
Write a program that prints the numbers from 1 to 100. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz
=end

=begin
for i in 1..100
  if i%3 == 0 && i%5 == 0
    puts "Fizz"
  elsif i%5 == 0
    puts "Buzz"
  elsif i%3 == 0
    puts "FizzBuzz"
  else
    puts i
  end
end
=end

#Take the sume of two numbers

# def sum_these_numbers(a,b)
#   a + b
# end
#
# puts sum_these_numbers(2,3)

#Method that checks for even numbers

# def is_even(num)
#   if num%2 == 0
#     puts true
#   else
#     puts false
#   end
# end

# def is_even(num)
#   num%2==0
# end
#
# puts is_even(10)
# puts is_even(11)
#
# Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.

# array =['hello', 'world',"class"]
#
# array.each { |v| puts v.upcase}
#
# Write a method which calls another method, then uses its return value.
# def sum_these_numbers(a,b)
#   a + b
# end
#
# def is_even(num)
#   num%2==0
# end
#
# def is_sum_even(a,b)
#   is_even sum_these_numbers(a,b)
# end
#
# puts is_sum_even(1,2)
# puts is_sum_even(1,3)
#
# Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.

#Get user input
#
# def valid_date(month,day,year)
#   # print month, day, year
#   # puts
#   # puts year.is_a? Integer
#
#   if year.to_i.to_s == year
#     # puts "year"
#     if month > 12 or month < 1
#       return false
#     else
#       last_day=31
#       case month
#       when 1
#       when 3
#       when 5
#       when 7
#       when 8
#       when 10
#       when 12
#         last_day = 31
#       when 2
#         if ((year.to_i % 4 == 0) && (year.to_i % 100 != 0)) || (year.to_i % 400 == 0)
#           last_day = 29
#         else
#           last_day = 28
#         end
#         # puts last_day
#       else
#         last_day = 30
#       end
#       # puts last_day
#       #       puts " month false"
#       if day>= 1 and day <= last_day
#         return true
#       else
#         return false
#       end
#     end
#   else
#     return false
#   end
# end
#
# puts "Enter month: "
# month = gets.chomp.to_i
# puts "Enter day: "
# day = gets.chomp.to_i
# puts "Enter year: "
# year = gets.chomp
#
# puts "your input is : #{valid_date(month,day,year)}"



#check month, date, year separately
#month: 1-12
#date:based on month check # of days
#Leap year: Divide by 4
#
# Using if, elsif, and else blocks, write a function called rps_game which allows two users to input their moves in "Rock, Paper, Scissors" and which determines the winner (or if a tie occurred).

def rps_game(player1,player2)
  if player1 == "rock" && player2 == "paper"
    puts "player 2 is the winner"
  elsif player1 == "rock" && player2 == "rock"
    puts "tie game"
  elsif player1 == "rock" && player2 == "scissors"
    puts "player 1 is the winner"
  else
    puts "test"
end
end

puts "Enter player 1"
player1 = gets.chomp
puts "Enter player 2"
player2 = gets.chomp

rps_game(player1, player2)
