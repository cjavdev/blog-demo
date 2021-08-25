class ApplicationController < ActionController::Base
  helper_method :current_user

  def ensure_current_user
    if current_user.nil?
      redirect_to "/"
    end
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
end
