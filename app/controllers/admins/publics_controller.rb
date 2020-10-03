class Admins::PublicsController < ApplicationController
	def index
		@publics = Public.all
	end

	def show
		@public = Public.find(params[:id])
	end

	def edit
		@public = Public.find(params[:id])
	end

	def update
		@public = Public.find(params[:id])
		@public.save(public_params)
		redirect_to admins_public_path(@public)
	end

end
