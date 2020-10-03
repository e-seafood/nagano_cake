class Publics::CartsController < ApplicationController

def create
  @cart = Cart.new(cart_params)
  @cart.save
  redirect_to items_path
end

private
def cart_params
  params.require(:cart).permit(:public_id, :item_id, :item_count)
end

end
