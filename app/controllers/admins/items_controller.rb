class Admins::ItemsController < ApplicationController

def new
  @item = Item.new
end

def index
  @items = Item.all
end

def create
  @item = Item.new(item_params)
  @item.save
  # 詳細画面がないため、一旦新規登録画面に設定。後でadmins_itemに変更
  redirect_to admins_item_path(@item)
end

def show
  @item = Item.find(params[:id])
end

  private
  def item_params
    params.require(:item).permit(:genre_id, :name, :explanation, :non_taxed_price, :image, :is_active)
  end

end