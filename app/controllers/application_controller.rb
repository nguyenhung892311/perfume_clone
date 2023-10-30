class ApplicationController < ActionController::Base
  include JsonWebToken

  before_action :authenticate_user!
  before_action :authenticate_request

  layout :layout_by_resource

  private

  def authenticate_request
    header = request.headers["Authorization"]
    header = header.split(" ").last if header
    decoded = jwt_decode(header)
    @current_user = User.find(decoded[:user_id])
  end

  def respon_status(success, msg, data, status = 200)
    result = { success: success, msg: msg, data: data }
    render json: result.to_json, status: status
  end

  protected

  def after_sign_in_path_for(resource)
    if resource.is_admin?
      admin_dashboard_index_path
    elsif resource.is_client?
      root_path
    else
      false
    end
  end

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
