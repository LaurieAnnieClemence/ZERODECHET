class ArticlesController < ApplicationController

  def index
    @articles = Article.all.order('created_at DESC')
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_back fallback_location: root_path, notice: "article publié, merci à vous!"
    else
      redirect_back fallback_location: root_path
    end
  end

  private
  def article_params
    params.require(:article).permit(:content, :author)
  end

end
