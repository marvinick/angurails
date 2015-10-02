class AddImageProcessedToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :image_processed, :boolean
  end
end
