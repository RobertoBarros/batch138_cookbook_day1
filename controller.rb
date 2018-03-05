require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    list_recipes
  end

  def create
    # 1. ask name
    name = @view.ask_name
    # 2. ask description
    description = @view.ask_description
    # 3. instaciate new recipe
    recipe = Recipe.new(name, description)
    # 4. add recipe in cookbook
    @cookbook.add_recipe(recipe)
  end

  def destroy
    # 1. show all recipes index
    list_recipes
    # 2. ask index to destroy
    index = @view.ask_index
    # 3. remove recipe index from cookbook
    @cookbook.remove_recipe(index)
  end

  private

  def list_recipes
    # 1. get all cookbook recipes
    recipes = @cookbook.all
    # 2. view list all recipes
    @view.display(recipes)
  end
end