class AddFlgsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :del_flg, :boolean
    add_column :users, :admin_flg, :boolean
  end
end
