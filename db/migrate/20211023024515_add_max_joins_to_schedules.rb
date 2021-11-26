class AddMaxJoinsToSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :max_join, :integer
  end
end
