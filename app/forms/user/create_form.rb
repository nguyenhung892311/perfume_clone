class User::CreateForm
  include ActiveModel::Model
  attr_accessor :name, :password, :password_confirmation, :phone, :address, :birthday, :status,
                :gender, :email, :district_name, :ward_name, :type, :image, :params

  def initialize(params={})
    @params = params

    return unless params[:user_create_form].present?
    super(user_params)
  end

  def save
    if valid?
      create_user
    else
      false
    end
  end

  private

  def user_params
    params.require(:user_create_form).permit(:name, :password, :password_confirmation, :phone, :address, :birthday, :status, :gender, :email, :district_name, :ward_name, :type, :image)
  end

  def create_user
    User.create!(user_params)
  end
end
