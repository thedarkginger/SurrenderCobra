class FearthewavesController < ActionController::Base
	layout "ftwlayouts"

	def index
		@posts = Post.order('updated_at DESC').all
		@comments = Cement.all
	end

	def fearthewave
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
    	params.require(:cements).permit(:username, :post, :slug)
  	end


end



