class PostsController < ApplicationController

  def index
    @posts = Post.all  # Postsテーブルから情報を取得する
  end

  def new
    @post = Post.new   # インスタンス変数を生成
  end

  def create
    Post.create(post_params)  # テーブルにデータを登録
    redirect_to root_path     # パスで直接リダイレクト先を指定する場合
                              #アクションに対応するビューファイルを参照せずに、別ページへリダイレクトさせる
  end

  def show
    @post = Post.find(params[:id]) #findメソッドでIDに該当するレコードを取得し、@postに代入
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update                       # updateメソッド
    post = Post.find(params[:id])
    post.update(post_params)       # レコードの情報を更新 ActiveRecordのメソッド
    redirect_to post_path(post.id)  # showアクションへリダイレクトする際に、:idにpost.idが入る
  end

def destroy
  post = Post.find(params[:id])
  post.destroy
  redirect_to root_path
end

  private 
  def post_params
    params.require(:post).permit(:title, :keyword, :plan, :achivement,)
  end

end
