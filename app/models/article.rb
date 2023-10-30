class Article < ApplicationRecord
  mount_uploaders :images, ImageUploader

  validates :title, presence: true
  enum status: [:active, :archived]

  scope :filter_by, lambda { |params|
    filter_by_title(params)
  }

  scope :filter_by_title, lambda { |params|
    where(title: params[:title]) if params[:title].present?
  }
end
