class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
		@sales = Sale.all
	end

	def new
    	@product = Product.new
  	end

  	def create
  		@product = Product.new(params[:product].permit(:product_name, :product_info, :product_base_cost))
  		if @product.save
  			redirect_to @product
  		else
  			render :new
  			flash.now[:notice] = "invalid input"
  		end
  	end
end
