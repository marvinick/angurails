class AddFileToVisitors < ActiveRecord::Migration
  def change
    add_column :visitors, :file, :string
  end
end
