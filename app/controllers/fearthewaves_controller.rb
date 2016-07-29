class FearthewavesController < ActionController::Base
	layout "ftwlayouts"

	def index
	 @posts = Post.order('updated_at DESC').all
	 @comments = Cement.all
	end

	def fearthewave
		@posts = Post.where(slug: params[:id])
		@comments = Cement.where(slug: params[:id]).all
	end

end



