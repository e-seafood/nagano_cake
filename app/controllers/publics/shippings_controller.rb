class Publics::ShippingsController < ApplicationController

	def index
		@shippings = Shipping.where(public_id: current_public.id)
		@shipping = Shipping.new
	end

	def create
		@shipping = Shipping.new(shipping_params)
		@shipping.public_id = current_public.id
		if   @shipping.save
		     redirect_to shippings_path
		else
			@shippings = Shipping.where(public_id: current_public.id)
		 	render "index"
		end
	end

	def edit
		@shipping = Shipping.find(params[:id])
	end

	def update
		@shipping = Shipping.find(params[:id])
		if  @shipping.update(shipping_params)
		    redirect_to shippings_path
		else
			render 'edit'
		end
	end

	def destroy
		@shipping = Shipping.find(params[:id])
		@shipping.destroy
		redirect_to shippings_path
	end

	private
	def shipping_params
		params.require(:shipping).permit(:postcode, :address, :name)
	end

end
