class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  
  def create
    #render plain: params[:article].inspect
    @article = Article.new(articles_params)
    @article.save
    redirect_to article_show(@article)
  end
  
  private
  def articles_params
    params.required(:article).permit(:title, :description)
  end
end
