class Publics::ItemsController < ApplicationController

def index
  @items = Item.where(is_active: true)
  @genres = Genre.all
end

def show
  @item = Item.find(params[:id])
  @items = Item.all
  @cart = Cart.new
end

end
