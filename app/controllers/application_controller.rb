require_relative '../../../rails_lite_final/myactionpack2/lib/my_action_controller/base'
class ApplicationController < MyActionController::Base

  def login(user)
    session[:session_token] = user.reset_session_token!
  end

  def logout
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def ensure_logged_in
    unless logged_in?
      redirect_to new_session_url
    end
  end

end