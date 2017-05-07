class CreateMines < ActiveRecord::Migration[5.0]
  def change
    create_table :mines do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :description

      t.timestamps
    end
  end
end
