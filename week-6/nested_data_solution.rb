# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]
#       [0   ]  [1]       [2]               [2][0]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {  outer: { inner: {"almost" => { 3 => "congrats!"}}}}

p hash[:outer][:inner]['almost'][3]
# attempts:
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

p nested_data[:array][1][:hash]

# attempts:
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# number_array.collect! { |element| element + 5 }
p number_array

number_array.map! do |element|
  if element.kind_of?(Array)
      element.map! do |inner|
        inner += 5
      end
  else
    element += 5
  end
end
p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

p startup_names

startup_names.map! do |element|
  if element.kind_of?(Array)
      element.map! do |inner|
        if inner.kind_of?(Array)
          inner.map! do |inner_inner|
            inner_inner += "ly"
          end
        else
          inner += "ly"
        end
      end
  else
    element += "ly"
  end
end

p startup_names

=begin

What are some general rules you can apply to nested arrays?
[RS] Checks for inner arrays and nested elements.

What are some ways you can iterate over nested arrays?
[RS] Using destructive methods like map!

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
Yes, we used map! and to check if inner element is an array.


=end
