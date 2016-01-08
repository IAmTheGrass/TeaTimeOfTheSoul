class SalesController < ApplicationController
	def index
		@sales = Sale.all
	end

	def show
		@sale = Sale.find(params[:id])
	end

	def new
    	@sale = Sale.new
  	end

  	def create
  		@sale = Sale.new(params[:sale].permit(:transaction_id, :customer_id, :package_id))
  		@sale.save
  		redirect_to @sale
  	end
end
