class SalesController < ApplicationController
	def index
		@sales = Sale.all
	end

	def show
		@sale = Sale.find(params[:id])
		@sales = Sale.all
		@packages = Package.all
		@customers = Customer.all
		@products = Product.all
	end

	def new
    	@sale = Sale.new
  	end

  	def create
  		@sale = Sale.new(params[:sale].permit(:transaction_id, :customer_id, :package_id))
  		if @sale.save
  			redirect_to @sale
  		else
  			render :new
  			flash.now[:notice] = "invalid input"
  		end
  			
  	end
end
