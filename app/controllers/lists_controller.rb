class ListsController < ApplicationController

   # GET / TODAS AS LISTAS
  def index
    @lists = List.all
  end

  # GET /MOSTRAR LISTA ESPECIFICA
  def show
    @list = List.find(params[:id]) # pegando só os filmes que quero através do id
  end

  # GET / criando uma nova lista
  def new
    @list = List.new
  end

  # POST / dando um "push" na lista criada em new
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def list_params # permissão p que o usuário coloque apenas :name
    params.require(:list).permit(:name)
  end
end
