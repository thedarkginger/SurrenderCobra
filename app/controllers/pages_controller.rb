class PagesController < ApplicationController
  def home
  	@posts = Post.all
  end

  def about
  end

  def contact
  	@posts = Post.all
  end

  def stories
  	@posts = Post.where(slug: params[:id]).all
  end
end
