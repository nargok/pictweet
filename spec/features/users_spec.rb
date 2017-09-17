require 'rails_helper'

feature 'User management' do

  # 新しいユーザーを登録する
  scenario 'add a new user' do
    user = build(:user)

    visit new_user_registration_path
    fill_in 'Nickname', with: user.nickname
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password
    click_button 'Sign up'

    expect(User.find_by(email: user.email)).to be_truthy
    # root画面に遷移すること
    expect(current_path).to eq root_path
  end

  # ログイン成功
  scenario 'successful login' do
    user = create(:user)

    visit new_user_session_path
    fill_in 'Email', with: user.email
    # TODO パスワードを入力できないので後で対応する
    fill_in 'Password', with: user.password
    click_button 'Log in'

    # root画面に遷移すること
    expect(current_path).to eq root_path
  end

  # ログイン失敗
  scenario 'login error' do
    user = create(:user)

    visit new_user_session_path

    fill_in 'Email', with: 'aaaa'
    fill_in 'Password', with: user.password
    click_button 'Log in'

    # ログイン画面のままであること
    expect(current_path).to eq new_user_session_path
  end

  # TODO Mypageのテストを実装する
  scenario 'mypage' do
    # user = create(:user)
    #
    #
    #
    # visit "/users/#{user.id}"
    # expect(page).to have_content "#{user.nickname}"

  end

end