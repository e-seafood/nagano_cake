class Publics::CartsController < ApplicationController

  def index
    @carts = Cart.all
  end

  def create
    @cart = Cart.new(cart_params)
    @cart.public.id = current_public.id
    @cart_item = Cart.find_by(item_id: @cart.item_id)
    if @cart_item.present?
      @cart.item_count += @cart_item.item_count
      @cart_item.destroy
    end
    @cart.save
    redirect_to carts_path
  end

  private
  def cart_params
    params.require(:cart).permit(:public_id, :item_id, :item_count)
  end

end
