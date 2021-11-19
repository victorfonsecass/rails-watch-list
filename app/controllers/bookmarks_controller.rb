class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id]) # Como elas estão nestadas, QUANDO VOU CRIAR UM NOVO BOOKMARK, primeiro preciso encontrar o list_id
    # LIST ID É A CHAVE ESTRANGEIRA LIGANDO OS MODELS
    @bookmark = Bookmark.new # para então criar um book mark
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to @bookmark.list
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
