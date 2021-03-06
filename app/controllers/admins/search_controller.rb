class Admins::SearchController < ApplicationController
  before_action :authenticate_admin!

  def search
    @content = params["search"]["content"]
    @records = search_for(@content)
  end

  private

  def search_for(content)
    Item.where('name LIKE ?', '%' + content + '%')
  end
end
