class StoriesController < ApplicationController
	def index
		@posts = Post.where(slug: params[:id]).all
		@comments = Cement.all
	end

  	def create
  		@cements= Cement.new(story_params)
  		@cements.save
  		redirect_to(:back)
	end

	private

  	def story_params
    	params.require(:cements).permit(:username, :post)
  	end
end
