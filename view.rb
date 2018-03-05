class View
  def ask_name
    puts "What's the recipe name?"
    gets.chomp
  end

  def ask_description
    puts "What's the recipe description?"
    gets.chomp
  end

  def ask_index
    puts "What's the recipe index"
    gets.chomp.to_i - 1
  end

  def display(recipes)
    puts "------------- Recipe List---------------"
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. name: #{recipe.name} | description: #{recipe.description}"
    end
    puts "----------------------------------------"
  end
end