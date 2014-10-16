class CategoriesController < ApplicationController

  def show
    @videos = Video.where(category_id: params[:id])
    @category = Category.find(params[:id])
  end

end