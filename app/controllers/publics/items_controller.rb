class Publics::ItemsController < ApplicationController
  def index
    @genres = Genre.where(is_active: true)
    @item = Item.joins(:genre).where(genres: { is_active: "有効" }).where(items: { is_active: "有効" })
    if params[:id]
      @genre = Genre.find(params[:id])
      @items = @genre.items.where(is_active: true).page(params[:page]).per(8)
    else
      @items = Item.joins(:genre).where(genres: { is_active: "有効" }).where(items: { is_active: "有効" }).
        page(params[:page]).per(8)
    end
  end

  def show
    @genres = Genre.where(is_active: true)
    @item = Item.find(params[:id])
    @cart = Cart.new
  end
end

