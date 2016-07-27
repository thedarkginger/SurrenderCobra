class PagesController < ApplicationController
  def home
  	@posts = Post.order('created_at DESC').all
  end

  def about
  end

  def contact
  	@posts = Post.all
  end
end
