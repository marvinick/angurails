class AddSlugs < ActiveRecord::Migration
  def change
    add_column :posts, :slug, :string
    add_column :pictures, :slug, :string
    add_column :places, :slug, :string
  end
end
