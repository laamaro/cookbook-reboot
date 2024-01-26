# TODO: Define your View class here, to display elements to the user and ask them for their input
class View
  def display_list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name} (#{recipe.rating} / 5)"
    end
  end

  def ask_user_for_name
    puts "What is the name of the recipe?"
    gets.chomp
  end

  def ask_user_for_description
    puts "What is the description of the recipe?"
    gets.chomp
  end

  def ask_user_for_rating
    puts "What is the rating of the recipe?"
    gets.chomp
  end

  def ask_user_for_index
    puts "What is the index of the recipe?"
    gets.chomp.to_i - 1
  end
end
