class Publics::CartsController < ApplicationController

def create
  @cart = Cart.new(item_params)
  @cart.save
  redirect_to carts_path
end

  private
  def cart_params
    params.require(:cart).permit(:public_id, :item_id, :item_count)
  end

end
