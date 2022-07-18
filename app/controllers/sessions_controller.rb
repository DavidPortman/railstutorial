class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      log_in user
      remember user
      redirect_to user #実際はuser_url(user)のこと
    else
      # エラーメッセージを作成する
      # flash[:danger] = 'Invalid email/password combination' # 本当は正しくない
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end