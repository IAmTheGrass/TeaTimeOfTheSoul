class CustomersController < ApplicationController

	def index
		@customers = Customer.all
	end

	def show
		@customer = Customer.find(params[:id])
	end

	def new
    	@customer = Customer.new
  	end

  	def create
  		@customer = Customer.new(params[:customer].permit(:name, :company_name, :customer_id))
  		@customer.save
  		redirect_to @customer
  	end
end
