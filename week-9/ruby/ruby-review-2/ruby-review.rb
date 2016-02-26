# Numbers to English Words


# I worked on this challenge with Zach B.
# This challenge took me [#] hours.


# Pseudocode
=begin
input: a function that takes a number as an argument
output: a string that contains the english equivalent of that number

steps:
first, create a data structure (hash with nested arrays or arrays with nested arrays)
  build up a number of arrays with unique patterns of english numbers
 1. numbers less than twenty
 2. numbers from twenty to ninety
 3. hundreds, thousands, millions, billions.

define function
  argument errors for negative numbers, only accept positive or zero
  zero is special case:
    IF argument is zero
      THEN return "zero"

Condition if the number is one hundred or more
1. Leading digit will always be rounded to one hundred. Get the first digit from the small array.
2. Divide number by ten
3. Remainder


=end


# Initial Solution
numbers = Hash.new

numbers = {
  small: ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'] ,
  multiples_of_ten: ['twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety'] ,
  large: ['hundred', 'thousand', 'million'],
}

# def in_words(number, db)
#   if number < 20
#     result = db[:small][number]
#     return result
#   elsif number >= 20 && number < 100
#     lead_digit = number / 10
#     last_digit = number % 10
#     result = db[:multiples_of_ten][(lead_digit)-2] + " " + db[:small][last_digit]
#     return result
#   else
#     lead_digit = number / 100
#     remainder = number % 100
#       if remainder < 20
#         last_digit = db[:small][remainder]
#         return db[:small][lead_digit] + " " + db[:large][0] + " " + last_digit
#       else
#         middle_digit = db[:multiples_of_ten][(remainder / 10)-2]
#         p middle_digit
#         last_digit = db[:small][remainder % 10]
#         return db[:small][lead_digit] + " " + db[:large][0] + " " + middle_digit + " " + last_digit
#       end
#     #returns a string.
#   end
# end
# Refactored Solution

# p in_words(0, numbers)
# p in_words(10, numbers)
# p in_words(19, numbers)
# p in_words(57, numbers)
# p in_words(93, numbers)
# p in_words(521, numbers)
# p in_words(999, numbers)

# Numbers to English Words


# I worked on this challenge with Zach B.
# This challenge took me [#] hours.


# Pseudocode
=begin
input: a function that takes a number as an argument
output: a string that contains the english equivalent of that number

steps:
first, create a data structure (hash with nested arrays or arrays with nested arrays)
  build up a number of arrays with unique patterns of english numbers
 1. numbers less than twenty
 2. numbers from twenty to ninety
 3. hundreds, thousands, millions, billions.

define function
  argument errors for negative numbers, only accept positive or zero
  zero is special case:
    IF argument is zero
      THEN return "zero"

Condition if the number is one hundred or more
1. Leading digit will always be rounded to one hundred. Get the first digit from the small array.
2. Divide number by ten
3. Remainder


=end


# Initial Solution
# def in_words(number, db)
#   if number < 20
#     result = db[:small][number]
#     return result
#   elsif number >= 20 && number < 100
#     lead_digit = number / 10
#     last_digit = number % 10
#     result = db[:multiples_of_ten][(lead_digit)-2] + " " + db[:small][last_digit]
#     return result
#   else
#     lead_digit = number / 100
#     remainder = number % 100
#       if remainder < 20
#         last_digit = db[:small][remainder]
#         return db[:small][lead_digit] + " " + db[:large][0] + " " + last_digit
#       else
#         middle_digit = db[:multiples_of_ten][(remainder / 10)-2]
#         p middle_digit
#         last_digit = db[:small][remainder % 10]
#         return db[:small][lead_digit] + " " + db[:large][0] + " " + middle_digit + " " + last_digit
#       end
#     #returns a string.
#   end
# end


numbers = Hash.new

$numbers = {
  small: ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'] ,
  multiples_of_ten: ['zero', 'ten', 'twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety'] ,
  large: ['hundred', 'thousand', 'million'],
}

# Refactored Solution

def in_words(number)
  if number < 20
    result = get_less_than_twenty(number)
    return result
  elsif number >= 20 && number < 100
    result = get_twenty_to_ninetynine(number)
    return result
  else
    large_index = number.to_s.length - 3
    large_num = $numbers[:large][large_index]
    p large_num
    lead_digit = number / 100
    remainder = number % 100
      if remainder < 20
        last_digit = get_less_than_twenty (number)
        return $numbers[:small][lead_digit] + " " + $numbers[:large][0] + " " + last_digit
      else
        last_digit = get_twenty_to_ninetynine(remainder)
        return $numbers[:small][lead_digit] + " " + $numbers[:large][0] + " " + last_digit
      end
    #returns a string.
  end
end


# function 1
  # for any remainder less than 20, pull from small array

# function 2
  # for any remainder between 20 and 99, use division and modulus, pull from two arrays

# Helper functions
def get_less_than_twenty (number)
   return $numbers[:small][number]
end

def get_twenty_to_ninetynine(number)
  array = number.divmod(10)
  return $numbers[:multiples_of_ten][array[0]] + " " + $numbers[:small][array[1]]
end

def get_large_index(number)
  # get the number, convert to a string, get it's length
  index = large_index = number.to_s.length - 3
   p $numbers[:large][index]

end

p get_large_index(1000)

p in_words(0)
p in_words(10)
p in_words(19)
p in_words(57)
p in_words(93)
p in_words(521)
p in_words(999)

# 1000 => 1,000
# 10000 => 10,000

# 1278467973584
# "17439878932"
# "17" "439" "878" "932"
# seventeen trillion four hundred thirty billion nine eight hundred million seventy eight nine thousand hundred thirty two

# ["thousand", "million", "billion", "trillion"]
# Reflection






# Reflection