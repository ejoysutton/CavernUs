class CreateTripMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :trip_members do |t|
      t.text :note
      t.integer :user_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
