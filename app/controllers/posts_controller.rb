class PostsController < ApplicationController

  def index
    @posts = Post.all  # Postsテーブルから情報を取得する
  end

end
