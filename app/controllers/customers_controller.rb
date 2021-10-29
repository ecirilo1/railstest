class CustomersController < ApplicationController
  layout "exchange"

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customer_path(@customer)
    else
      render 'new'
    end
  end

  def new
    @customer = Customer.new()
    # @customer.save
  end

  def index
    @customers = Customer.all
  end

  def destroy
    @customer = Customer.find(params[:id])
    # raise
    @customer.destroy
    redirect_to customer_path
  end


  def show
    @customer = Customer.find(params[:id])
    # authorize @customer
    # @replacement = Replacement.new
  end

  def update
    #raise
    @customer = Customer.find(params[:id])
    @customer.client_name = params[:customer][:client_name]
    @customer.teeptrak_id = params[:customer][:teeptrak_id]
    @customer.save
    redirect_to customer_path(@customer)
  end

  # def edit
  #   @customer = Customer.find(params[:id])
  # end

  private

  def customer_params
    params.require(:customer).permit(:client_name, :teeptrak_id)
  end
end
