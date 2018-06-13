class ApplicationController < ActionController::Base
before_action :fetch_user

def check_if_logged_in
  unless @current_user.present?
    flash[:error] = "You must be logged in to view that page."
    redirect_to login_path
  end
end

private

def fetch_user

  if session[:user_id].present?
    @current_user = User.find_by id: session[:user_id]
    # Fake admin value for web page testing
    @is_admin = true
  end
  # just in case we r dealing with a state user ID
  # (i.e. )
  session[:user_id] = nil unless @current_user.present?

end

def check_if_admin
    unless @current_user.admin
      flash[:error] = "You must be logged in as admin to view that page."
      redirect_to login_path
    end
  end
  
end
