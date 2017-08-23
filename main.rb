# Basic Objectives:
# - the user chooses from a list of main dishes
# - the user chooses 2 side dish items
# - computer repeats users order
# - computer totals lunch items and displays total
#
# Bonus Objectives:
# - the user can choose as many "add-on" items as they want before getting total
# - the user can clear their choices and start over
# - the user has a wallet total they start with and their choices cannot exceed what they can pay for
# - the program is in a loop to keep asking the user to make new orders until they type 'quit' at any time
# - main dishes and side items have descriptions with them and the user has an option to view the description /nutritional facts before they order (hint: think hashes)
# - descriptions of food can have multiple options like nutritional facts, calories, fat content ect...(hint: think nested hashes)
# - display to the user not only their total but the total fat content/calories / carbs / etc..
monies = []
food = []
puts "----Lunch Lady Simulator 2017----"
puts "Yeah, what do you want?"

class Meal
  attr_accessor

  def initialize(meal, price, description, nutrition)
    @meal = meal
    @price = price
    @description = description
    @nutrition = nutrition
  end

  def menu
    puts "#{@meal} for $#{@price}"
  end

  def info
    puts "#{@description}\n#{@nutrition}"
  end

  def meal_add
    @meal
  end

  def price_total
    @price
  end

end

main_1 = Meal.new("Pizza", 6.50, "The finest slices of room temperature pizza.", "Not very healthy.")
main_2 = Meal.new("Chicken", 7.75, "Lemon herb chicken, medium well.", "Looks dangerous to your health.")

side_1 = Meal.new("Fries", 2.00, "Cold and slightly chewy.", "Probably not good for you.")
side_2 = Meal.new("Salad", 3.50, "It seems fresh enough...", "Suprisingly healthy.")
side_3 = Meal.new("Cheese Curds", 4.75, "All the cheese has leaked out, mainly just fried air.", "The calories are strong with this one.")
side_4 = Meal.new("Pretzels", 3.75, "Hard as a rock.", "Not very healthy")


puts "1) "
puts "#{main_1.menu}"
puts "2) "
puts "#{main_2.menu}"

input_main = gets.to_i
if input_main == 1
  puts main_1.info
  monies << main_1.price_total
  food << main_1.meal_add
elsif input_main == 2
  puts main_2.info
  monies << main_2.price_total
  food << main_2.meal_add
end

puts "Alright, how about your sides?"
puts "1)"
puts "#{side_1.menu}"
puts "2)"
puts "#{side_2.menu}"
puts "3)"
puts "#{side_3.menu}"
puts "4)"
puts "#{side_4.menu}"



input_side = gets.to_i
if input_side == 1
  puts side_1.info
  monies << side_1.price_total
  food << side_1.meal_add
elsif input_side == 2
  puts side_2.info
  monies << side_2.price_total
  food << side_2.meal_add
elsif  input_side == 3
  puts side_3.info
  monies << side_3.price_total
  food << side_3.meal_add
elsif input_side == 4
  puts side_4.info
  monies << side_4.price_total
  food << side_4.meal_add
else
  puts "Please choose a side"
end

puts "Please choose another side."

input_side2 = gets.to_i
if input_side2 == 1
  puts side_1.info
  monies << side_1.price_total
  food << side_1.meal_add
elsif input_side2 == 2
  puts side_2.info
  monies << side_2.price_total
  food << side_2.meal_add
elsif  input_side2 == 3
  puts side_3.info
  monies << side_3.price_total
  food << side_3.meal_add
elsif input_side2 == 4
  puts side_4.info
  monies << side_4.price_total
  food << side_4.meal_add
else
  puts "Please choose a side"
end

str_monies = monies.map(&:to_i)

puts "You have ordered #{food} and the price is $#{str_monies.inject(:+)}"










# def menu_main
#   puts "1) #{main_1.meal} $#{main_1.price}"
#   puts "2) #{main_2.meal} $#{main_2.price}"
#   option = gets.to_i
#   if option == 1
#     puts "#{main_1.description} #{main_1.nutrition}"
#   else option == 2
#     puts "#{main_2.description} #{main_2.nutrition}"
# end


# def menu_side
#   puts "sfs"
# end
#
# def menu_add_ons
#   puts "cheese"
# end

# menu_side
# puts "and?"
# menu_side
# puts "anything to top it off?"
# menu_add_ons
