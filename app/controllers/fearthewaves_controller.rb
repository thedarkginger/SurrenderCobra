class FearthewavesController < ActionController::Base
	layout "ftwlayouts"

	def index
		@posts = Post.order('created_at DESC').first(5)
		@comments = Cement.where(slug: params[:id]).all
		@bars = Post.order('created_at DESC').first(1)
	end

	def fearthewave
		@posts = Post.where(slug: params[:id]).all
		@comments = Cement.where(slug: params[:id]).all
	end 

  	def create
  		@cements= Cement.new(story_params)
  		@cements.save
  		redirect_to(:back)
	end

	private

  	def story_params
    	params.require(:cements).permit(:id, :username, :post, :slug, :location)
  	end

end



