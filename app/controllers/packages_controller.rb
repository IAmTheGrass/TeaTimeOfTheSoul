class PackagesController < ApplicationController
	def index
		@packages = Package.all
	end

	def show
		@package = Package.find(params[:id])
		@sales = Sale.all
		@packages = Package.all
	end

	def new
    	@package = Package.new
  	end

  	def create
  		@package = Package.new(params[:package].permit(:package_id, :product_id, :cost ))
  		if @package.save
  			redirect_to @package
  		else
  			flash.now[:notice] = "invalid input"
  			render :new
  		end
  	end
end
