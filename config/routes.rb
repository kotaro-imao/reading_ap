Rails.application.routes.draw do
  root to: 'posts#index'
  # resourcesメソッドのexceptオプション indexのみを除外する
  resources :posts, except: :ndex
  # resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] #各アクションに対するルーティングを生成 $ rails routes で確認できる
end
