class PackagesController < ApplicationController
	def index
		@packages = Package.all
	end

	def show
		@package = Package.find(params[:id])
	end

	def new
    	@package = Package.new
  	end

  	def create
  		@package = Package.new(params[:package].permit(:package_id, :product_id, :cost ))
  		@package.save
  		redirect_to @package
  	end
end
