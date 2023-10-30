class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :trackable

  enum status: [:active, :inactive]
  enum gender: [:male, :fermale, :other]

  validates :name, presence: true
  # validates :email, uniqueness: { scope: :deleted_at },
  # format: {
  #   with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  # }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  scope :filter_by, lambda { |params|
    filter_by_name(params)
    filter_by_phone(params)
  }

  scope :filter_by_name, lambda { |params|
    where(title: params[:name]) if params[:name].present?
  }

  scope :filter_by_phone, lambda { |params|
    where(title: params[:phone]) if params[:phone].present?
  }

  def is_client?
    type == "Client"
  end

  def is_admin?
    type == "Admin"
  end

  def check_permissions(current_user)
    current_user.is_admin? && (current_user.id == id || is_client? )
  end
end
