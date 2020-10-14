class Admins::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index
    @genres = Genre.all.page(params[:page])
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genres = Genre.all.page(params[:page])
    @genre.save
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      redirect_to admins_genres_path
    else
      render "edit"
      flash[:notice] = "編集内容を登録できませんでした"
    end
  end

  private

  def genre_params
    params.require(:genre).permit(:name, :is_active)
  end
end
