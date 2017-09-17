require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) {create(:user)}


  describe 'GET #show' do

    before do
      login_user user
    end

    it 'renders show template' do
      get :show
      expect(assigns(:nickname)).to eq user.nickname # ログイン中ユーザのnicknameと同じ
      expect(response).to render_template :show
    end

  end
end
