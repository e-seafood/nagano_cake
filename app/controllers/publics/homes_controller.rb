class Publics::HomesController < ApplicationController
  def top
    @items = Item.joins(:genre).where(genres: { is_active: "有効" }).where(items: { is_active: "有効" }).
      page(params[:page]).order(created_at: "DESC").limit(4)
    @genres = Genre.where(is_active: true)
  end

  def about
  end
end
