class CustomersController < ApplicationController
	def index
		@customers = Customer.all
	end

	def show
		@customer = Customer.find(params[:id])
		@sales = Sale.all
		@packages = Package.all
	end

	def new
    	@customer = Customer.new
  	end

  	def create
  		@customer = Customer.new(params[:customer].permit(:name, :company_name, :customer_id))
  		if @customer.save
  			redirect_to @customer
  		else
  			flash.now[:notice] = "invalid input"
  			render :new
  		end
  	end
end
