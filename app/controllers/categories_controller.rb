class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end
  def create
    @category = Category.new(category_params)
    
    if @category.save
      redirect_back fallback_location: root_path, notice: "categorie ajoutée, merci à vous!"
    else
      flash[:alert] = @category.errors_to_sentence
      redirect_back fallback_location: root_path
    end
  end


  private
  def category_params
    params.require(:category).permit(:name)
  end
end
