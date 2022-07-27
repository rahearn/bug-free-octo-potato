class ApplicationController < ActionController::Base
  helper_method :user_signed_in?, :current_user

  def user_signed_in?
    current_user.present?
  end

  def current_user
    @current_user ||= User.where(id: session["current_user_id"]).first
  end
end
