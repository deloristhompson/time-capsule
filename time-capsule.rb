# greet the user and take their name. Store this name.
puts "Hello, please enter your name:\n"
user_name = gets.chomp
# Ask the user what they want to add to the time capsule. Give the user the option to type the command "Finished" which stops the user from getting asked to add more items.
puts

input = ""
time_capsule = []
# time_capsule_list
while true
  puts "What would you like to add to your personal Time Capsule today? (type 'Finished' when done):\n"
  # If they entered an item, store that item in the time capsule.
  # Prompt user for a number greater then 0 of that item
  input = gets.chomp.downcase
  puts "How many would you like?"
  # Once finished, print out the contents of the time capsule pf the user to see in the following format (name)
  if input == 'finished'
    # time_capsule.each_with_index
    break
  else
    number_with_index = gets.chomp.to_s
    input += " = #{number_with_index}"
    time_capsule << input
  end
end

print "#{user_name}, thanks for trying out Time Capsule maker, Here is a list of the items in your list:\n"
time_capsule.each do |items|
  puts "* #{items}"
end
