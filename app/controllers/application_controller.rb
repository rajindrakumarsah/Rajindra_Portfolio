class ApplicationController < ActionController::Base
  helper_method :is_admin?

  private

  def is_admin?
    unless current_user&.is_admin?
      redirect_to root_path, alert: "You must be an admin to access this page."
    end
  end
end
