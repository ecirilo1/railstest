class UserMailer < ApplicationMailer
  default from: 'return@teeptrak.com'

  def welcome_email
    @user = params[:user]
    @email = 'fc@teeptrak.com'
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: @email, subject: 'Welcome to My Awesome Site')
  end
end
