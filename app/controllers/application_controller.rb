class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  private
    def requiere_logged_in_user
      unless user_singed_in?
        flash[:danger] = "Please login!"
        redirect_to login_path
      end
    end
end
