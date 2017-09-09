class TweetsController < ApplicationController

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

end
