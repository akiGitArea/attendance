class SessionsController < ApplicationController
  def new
  end

  def create
    # user = User.find_by(email: params[:session][:email].downcase)
    user = User.find_by(name: params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user

      #ユーザーIDをセッションにセット
      session[:user_id] = User.new()
      session[:user_id] = user.id
      session[:admin_flg] = User.new()
      session[:admin_flg] = user.admin_flg

      #home(controller)に戻る
      redirect_to root_url
    else
      #ログイン情報が不一致の場合、ログイン画面に戻る
      render '_new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
