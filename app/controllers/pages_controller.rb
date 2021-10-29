class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  layout "exchange"

  def home
    #UserMailer.with(user: @user).welcome_email.deliver_later
    # raise
  end
end
