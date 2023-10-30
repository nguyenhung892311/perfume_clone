class Article::CreateForm
  include ActiveModel::Model
  attr_accessor :title, :content, :images, :status, :slug, :order, :article_catalogue_id, :params, :mini_description

  def initialize(params={})
    @params = params

    return unless params[:article_create_form].present?
    super(params)
  end

  def save
    if valid?
      create_article
    else
      false
    end
  end

  private

  def create_article
    Article.create!(params)
  end
end
