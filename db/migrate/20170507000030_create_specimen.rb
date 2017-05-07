class CreateSpecimen < ActiveRecord::Migration[5.0]
  def change
    create_table :specimen do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.integer :post_id

      t.timestamps
    end
  end
end
