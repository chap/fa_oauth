class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
    head 403 unless current_user.present?
  end

  def sign_in(user, by_pass)
    @current_user = user
    session[:user_id] = user.id
  end

  def sign_out(user)
    session[:user_id] = nil
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
  helper_method :current_user
end
