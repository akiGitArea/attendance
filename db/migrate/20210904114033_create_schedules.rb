class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.integer :schedule_id
      t.string :place
      t.timestamp :start_at
      t.timestamp :end_at
      t.integer :price_all
      t.integer :price_per
      t.string :court_num
      t.text :explanation
      t.boolean :del_flg

      t.timestamps
    end
    add_index :schedules, :schedule_id
  end
end
