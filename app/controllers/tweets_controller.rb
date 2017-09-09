class TweetsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @tweets = Tweet.all.paginate(page: params[:page]).order('created_at DESC')
  end

  def new
  end

  def create
    Tweet.create(tweet_params)
  end

  private

  def tweet_params
    params.permit(:name, :image, :text)
  end

  def move_to_index
    # ログインしていなかった場合にindex actionを実行する
    redirect_to action: :index unless user_signed_in?
  end
end
