class PublicController < ApplicationController

  def homepage
    @posts = Post.all
  end

  def blog
  end

  def contact
  end
  
end
