class ReplacementsController < ApplicationController
  layout "exchange"
  def index
    @replacements = Replacement.all
    # UserMailer.with(user: @user).welcome_email.deliver_later
    # raise
  end

  def show
    @replacement = Replacement.find(params[:id])
  end

  def new
    @replacement = Replacement.new()
  end

  def create
    @replacement = Replacement.new(replacement_params)
    if @replacement.save
      redirect_to replacement_path(@replacement)
    else
      render 'new'
    end
  end

  def update
    #raise
    @replacement = Replacement.find(params[:id])
    @replacement.contact_first_name = params[:replacement][:contact_first_name]
    @replacement.contact_last_name = params[:replacement][:contact_last_name]
    @replacement.save
    redirect_to replacement_path(@replacement)
  end

  private

  def replacement_params
    params.require(:replacement).permit(:description, :tablet_number, :internal_message, :tested, :contact_first_name, :contact_last_name, :contact_email, :contact_phone)
  end
end
