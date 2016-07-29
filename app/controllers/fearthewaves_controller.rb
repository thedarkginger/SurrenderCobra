class FearthewavesController < ActionController::Base
	layout "ftwlayouts"

	def index
	 @posts = Post.order('updated_at DESC').all
	end

	def blog
		@posts = Post.where(slug: params[:id]).all
		@comments = Cement.all
	end

	def create
  		@cements= Cement.new(params[:id])
  		@cements.save
  		redirect_to(:back)
	end

	private

  	def story_params
    	params.require(:cements).permit(:username, :post, :slug)
  	end

end


