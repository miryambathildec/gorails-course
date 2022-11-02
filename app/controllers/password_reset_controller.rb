class PasswordResetController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.present?
      # send email
      PasswordMailer.with(user: @user).reset.deliver_now

    else
      flash[:alert] = 'No account found with that email address'
      render :new
    end
    redirect_to root_path, notice: 'If an account with your email address exists, you will receive an email with a link to reset your password.'
  end

end
