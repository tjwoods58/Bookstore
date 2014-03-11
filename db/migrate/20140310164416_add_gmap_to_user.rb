class AddGmapToUser < ActiveRecord::Migration
  def change
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :address, :string
    add_column :users, :description, :string
    add_column :users, :title, :string
  end
end
