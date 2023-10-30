class Api::V1::ArticlesController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!, :raise => false

  before_action :set_article, only: %i[show]

  #GET | /api/v1/articles
  def index
    articles = Article.all
    respon_status(true, 'articles', articles)
  rescue => ex
    respon_status(false, 'page', ex.message, 400)
  end

  #GET | /api/v1/articles/:id
  def show
    respon_status(true, 'detail article', @article)
  rescue => ex
    respon_status(false, 'detail article', ex.message, 400)
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end
