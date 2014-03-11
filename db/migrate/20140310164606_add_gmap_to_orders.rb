class AddGmapToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :latitude, :float
    add_column :orders, :longitude, :float
    add_column :orders, :description, :string
    add_column :orders, :title, :string
  end
end
