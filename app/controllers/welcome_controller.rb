class WelcomeController < ApplicationController
  def index
    @article = Article.first
  end

  def ckeditor
    @article = Article.first
  end

  def mercury
    @article = Article.first
  end

  def kindeditor
    @article = Article.first
  end

  def ueditor
    @article = Article.first
  end

end
