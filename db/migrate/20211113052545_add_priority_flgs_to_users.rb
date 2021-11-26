class AddPriorityFlgsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :priority_flg, :boolean
  end
end
