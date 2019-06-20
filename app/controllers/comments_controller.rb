class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_back fallback_location: root_path, notice: "commentaire ajouté, merci à vous!"
    else
      #flash[:alert] = @comment.errors_to_sentence
      redirect_back fallback_location: root_path
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :author, :waste_id)
  end
end
