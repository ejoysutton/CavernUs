class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.date :date
      t.text :description
      t.integer :member_id
      t.integer :mine_id
      t.integer :user_id

      t.timestamps
    end
  end
end
