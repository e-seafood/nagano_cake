class Publics::ShippingsController < ApplicationController

	def index
		@shippings = Shipping.all
		@shipping = Shipping.new
	end

	def create
		shipping = Shipping.new(shipping_params)
		if   shipping.save
		     reditect_to shippings_path(shipping)
		else
		 	render "edit"
		 	flash[:notice] = "登録出来ませんでした"
		end
	end

	def edit
		@shipping = Shipping.find(params[:id])
	end

	def update
		@shipping = Shipping.find(params[:id])
		@shipping.update(shipping_params)
		redirect_to publics_shipping_path
	end

	def destroy
		@shipping = Shipping.find(params[:id])
		shipping.destroy
		redirect_to publics_shipping_path
	end

	private
	def shipping_params
		params.require(:shipping).permit(:postcode, :address, :name)
	end

end
