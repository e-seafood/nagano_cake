class Admins::GenresController < ApplicationController
	def index
		@genres = Genre.all
		@genre = Genre.new
	end

	def create
		@genre = Genre.new(genre_params)
		if 	@genre.save
		   	redirect_to request.referer
		else
			render "index"
			flash[:notice] = "登録できませんでした"
		end
	end

	def edit
	end

	def update
	end
private
	def genre_params
		params.require(:genre).permit(:name, :is_active)
	end
end
