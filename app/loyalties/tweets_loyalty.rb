class TweetsLoyalty < ApplicationLoyalty
  def create?
    user.admin? # 管理者ユーザーのみpostができる
  end
end
