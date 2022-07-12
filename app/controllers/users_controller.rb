class UsersController < ApplicationController
  respond_to :json
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    authorize! :show, @user
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: i[:email, :login, :password])
  end
end