class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :image
      t.string :title
      t.text :description
      t.decimal :price
    end
  end
end
