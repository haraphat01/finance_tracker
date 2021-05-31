class ArticlesController < ApplicationController
  def index
  end

  def new
  end

  def create  
    @article = Article.new(article_params)
    @article.user = current_user    
    @article.save   
    redirect_to @article 
  end

  def show   
    @article = Article.find(params[:id]) 
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def article_params   
    params.require(:article).permit(:title, :text) 
  end
end
