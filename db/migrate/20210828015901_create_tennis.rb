class CreateTennis < ActiveRecord::Migration[6.1]
  def change
    create_table :tennis do |t|

      t.timestamps
    end
  end
end
