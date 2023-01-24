class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  # Instantiates a new article
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: "...", body: "...")

    if @article.save
      # Redirects to http://localhost:3000/articles/#{@article.id}
      redirect_to @article
    else
      render :new
    end
  end
end
