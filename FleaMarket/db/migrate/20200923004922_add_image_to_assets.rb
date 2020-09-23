class AddImageToAssets < ActiveRecord::Migration[5.2]
  def change
    add_column :assets, :image, :string
  end
end
