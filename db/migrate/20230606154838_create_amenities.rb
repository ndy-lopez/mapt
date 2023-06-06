class CreateAmenities < ActiveRecord::Migration[7.0]
  def change
    create_table :amenities do |t|
      t.string :name
      t.string :category
      t.references :map, null: false, foreign_key: true
      t.timestamps
    end
  end
end
