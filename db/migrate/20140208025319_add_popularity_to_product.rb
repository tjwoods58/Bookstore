class AddPopularityToProduct < ActiveRecord::Migration
  def change
    add_column :products, :popularity, :decimal, default: 0
  end
end
