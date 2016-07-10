class WelcomeController < ApplicationController
  def index
    @article = Article.first
  end
end
