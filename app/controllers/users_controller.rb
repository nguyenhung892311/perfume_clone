class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all.filter_by(params).order(created: :asc)
  end

  def show;end

  def new
    @user_form = User::CreateForm.new
  end

  def create
    @user_form = User::CreateForm.new(user_params)
    handle_form_save('users.save_article_sucessfully')
  end

  def edit
    @user_form = User::UpdateForm.new(@admin_user)
  end

  def update
    @user_form = User::UpdateForm.new(user_params)
    handle_form_save('users.update_article_sucessfully')
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: I18n.t('Destroyed successfully!')
  end

  private

  def set_user
    @user = User.find(params[:id]).decorate
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :phone, :address, :birthday, :status, :gender, :email, :district_name, :ward_name, :type, images: [])
  end

  def handle_form_save(success_message)
    if @user_form.save
      redirect_to client_users_path, notice: I18n.t(success_message)
    else
      render :new
    end
  end
end
