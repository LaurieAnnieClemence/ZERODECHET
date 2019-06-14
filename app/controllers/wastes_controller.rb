class WastesController < ApplicationController
  def index
    @wastes = Waste.all
  end

  def show
    @waste = Waste.find(params[:id])
  end

  def new
    @waste = Waste.new
  end

  def create
    @waste = Waste.new(waste_params)

    if @waste.save
      redirect_back fallback_location: root_path, notice: "déchet ajouté, merci à vous!"
    else
      flash[:alert] = @waste.errors_to_sentence
      redirect_back fallback_location: root_path
    end
  end

  private
  def waste_params
    params.require(:waste).permit(:name, :category_id)
  end
end
