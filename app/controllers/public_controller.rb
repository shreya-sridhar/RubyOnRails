class PublicController < ApplicationController

  def homepage
    @posts = Post.active.order_by_latest_first.limit_5
    @categories = Category.all
  end

  def blog
    redirect_to posts_path
  end

  def contact
  end

end
