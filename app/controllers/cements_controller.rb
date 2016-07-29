class CementsController < ApplicationController

	def new
		@cements = Cement.new
	end

	def create
  		@cements= Cement.new(ftwblog_params)
  		@cements.save
  		redirect_to(:back)
	end

	private

  	def ftwblog_params
    	params.require(:cements).permit(:username, :post, :slug)
  	end

end