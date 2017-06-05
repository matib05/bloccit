class PostsController < ApplicationController
  def index
    p "here"
    @posts = Post.all
    scam
  end

  def show
  end

  def new
  end

  def edit
  end
  
  def scam
    @posts.each_with_index do |post, index|
      if index % 5 == 0
        post.title = "SPAM"
      end
    end
  end
end
