require 'rails_helper'

RSpec.describe TweetsController, :type => :controller do

  describe 'GET #index' do
    it 'returns tweets object with #index' do
      get :index
      expect(assigns(:tweets)).not_to be_nil
    end

    #index templateを描画する
    it 'renders index template' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #new' do
    #new templateを描画する
    it 'renders new template' do
      get :new
      expect(response).to render_template :new
    end
  end


  describe 'POST #create' do
    # 有効な属性の場合
    context 'with valid attributes' do
      # databaseに新しいtweetを保存すること
      it 'creates new tweets in the database' do
        expect{
          post :create, tweet: build(:tweet)
        }.to change(Tweet, :count).by(1)
      end
      # createビューを描画すること
      it 'renders create view template' do
        post :create, tweet: build(:tweet)
        expect(response).to render_template :create
      end

    end
  end

end
