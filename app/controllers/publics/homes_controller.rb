class Publics::HomesController < ApplicationController

def top
	@genres = Genre.where(is_active: true)
  if params[:id]
    @genre = Genre.find(params[:id])
    @items = @genre.items.where(is_active: true)
  else
    @items = Item.where(is_active: true)
  end
end

def about
end

end
