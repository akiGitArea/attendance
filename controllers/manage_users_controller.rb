class ManageUsersController < ApplicationController
  def manage
      @users = User.find_by(id:params.require(:user)[:id])
      if @users == nil
            redirect_to manage_users_manage_user_path
      else
            # スケジュール更新
            if @users.update(exist_user_params)
                redirect_to manage_users_manage_user_path
            else
                redirect_to manage_users_manage_user_path
            end
      end
  end

  private
  def exist_user_params
      params.require(:user).permit(:name, :email, :password, :del_flg, :admin_flg, :priority_flg)
  end

end
