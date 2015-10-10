class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :state
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.timestamps
    end
  end
end
