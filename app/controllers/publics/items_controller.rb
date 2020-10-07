class Publics::ItemsController < ApplicationController

def index
  @genres = Genre.where(is_active: true)
  if params[:id]
    @genre = Genre.find(params[:id])
    @items = @genre.items.where(is_active: true)
  else
    @items = Item.where(is_active: true)
  end
end

def show
  @genres = Genre.where(is_active: true)
  @item = Item.find(params[:id])
  @cart = Cart.new
end

end
