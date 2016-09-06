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
  	@posts = Post.where(subdomain: current_user.website)
  end
end
