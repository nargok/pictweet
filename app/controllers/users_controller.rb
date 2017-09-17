class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @tweets = current_user.tweets.paginate(page: params[:page]).order('created_at DESC')
  end
end
