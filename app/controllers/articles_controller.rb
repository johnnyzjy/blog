class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "zjy", password: "zjy", except: [:index, :show]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  def mercury
    page = Article.find(params[:id])
    page.title = params[:content][:page_name][:value]
    page.content = params[:content][:page_name][:value]
    page.save!
    render text: ""
  end

  def mercury_update
    
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
