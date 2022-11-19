class ApplicationController < ActionController::API

  before_action :authenticate_customer
  before_action :skip_trackable

  private

  def skip_trackable
    request.env['warden'].request.env['devise.skip_trackable'] = '1' unless request.fullpath == '/users/sign_in'
  end

  def authorization_header?
    request.headers['Authorization'].present?
  end

  def render_not_found_response
    render json: {}, status: :not_found
  end

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  rescue_from CanCan::AccessDenied do
    render status: :unauthorized, json: {}
  end

  protected

  def authenticate_customer
    authenticate_token || render_unauthorized
  end

  def authenticate_token
    return false if request.headers['Customer-Api-Key'].nil?

    Customer.find_by(api_key: request.headers['Customer-Api-Key'], active: true)
  end

  def render_unauthorized(realm = 'Application')
    headers['WWW-Authenticate'] = %(Token realm="#{realm}")
    render json: { errors: ['Bad credentials'] }, status: :unauthorized
  end
end
