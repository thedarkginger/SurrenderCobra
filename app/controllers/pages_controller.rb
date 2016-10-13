class PagesController < ApplicationController
  def home
  	@posts = Post.order('created_at DESC').all
  end

  def about
  end

  def contact
  	@posts = Post.all
  end

  def admin
    if user_signed_in?
  	 @posts = Post.where(subdomain: current_user.website).order(published_at: :asc).limit(12)
    end
  end
end
