class SolutionsController < ApplicationController
  def create
	  @solution = Solution.new(solution_params)

	  if @solution.save
	    redirect_back fallback_location: root_path, notice: "solution ajoutée, merci à vous!"
	  else
	    #flash[:alert] = @solution.errors_to_sentence
      redirect_back fallback_location: root_path
    end
  end

  private
	def solution_params
    params.require(:solution).permit(:content, :waste_id)
	end
end
