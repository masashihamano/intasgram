class PagesController < ApplicationController

  def home
    # もしユーザーがsign_inしてなければ
    unless user_signed_in?
      # 新規登録ページ（ログイン画面）にリダイレクトする
      redirect_to newuser_session_path
      
    end
  end


end
