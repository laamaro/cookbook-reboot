require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # 1- Pegar as receitas no repositorio
    recipes = @cookbook.all
    # 2- Mandar a view listar
    @view.display_list(recipes)
  end

  def add
    # 1- Pergunta o nome para o user
    name = @view.ask_user_for_name
    # 2- Pergunta a descrição para o user
    description = @view.ask_user_for_description
    # 2.1 - Perguntar para a view qual o rating
    rating = @view.ask_user_for_rating
    # 3- Criar uma instancia de Recipe
    recipe = Recipe.new(name, description, rating)
    # 4- Pedir para o cookbook adicionar no CSV
    @cookbook.create(recipe)
  end

  def remove
    # 1- listar as receitas
    list
    # 2- Mandar a view perguntar pro user qual o index
    index = @view.ask_user_for_index
    # 3- Mandar o repositorio deletar a receita
    @cookbook.destroy(index)

    list
  end
end
