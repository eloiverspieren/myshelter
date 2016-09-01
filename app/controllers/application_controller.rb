class ApplicationController < ActionController::Base
  include Pundit


  protect_from_forgery with: :exception
  before_filter :store_current_location, :unless => :devise_controller?
  before_action :authenticate_user!

  after_action :verify_authorized, :except => :index, unless: :devise_controller?
  after_action :verify_policy_scoped, :only => :index, unless: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized




  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  def store_current_location
    store_location_for(:user, request.url)
  end

  def after_sign_out_path_for(resource)
    request.referrer || rooth_path
  end

end
