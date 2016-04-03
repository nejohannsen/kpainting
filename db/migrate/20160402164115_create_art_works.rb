class CreateArtWorks < ActiveRecord::Migration
  def change
    create_table :art_works do |t|
      t.string :Title
      t.string :Technique
      t.integer :Height
      t.integer :Width
      t.string :Price
      t.boolean :Sold
      t.text :Description

      t.attachment :Image

      t.timestamps null: false
    end
  end
end
