class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_permission!

  def index
  end

  private

  def admin_permission!
    unless current_user.is_admin?
      flash[:notice] = "You do not have permissions."
      redirect_to root_path
    end
    return true
  end
end
