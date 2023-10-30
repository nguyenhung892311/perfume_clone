class Api::V1::AuthenticationController < ApplicationController
  skip_before_action :verify_authenticity_token, :authenticate_request
  skip_before_action :authenticate_user!, :raise => false

  def login
    client = User.where(status: :active).find_by_email(params[:email])
    if client && client.valid_password?(params[:password])
      token = jwt_encode(user_id: client.id)
      render json: { client: client, token: token }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end
end
