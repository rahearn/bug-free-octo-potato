class SessionsController < ApplicationController
  def create
    user_info = request.env["omniauth.auth"]
    user = User.from_omniauth(user_info)
    if user.persisted?
      session["current_user_id"] = user.id
      redirect_to root_path, notice: "Successfully signed in"
    else
      redirect_to root_path, alert: user.errors.full_messages.join(". ")
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
