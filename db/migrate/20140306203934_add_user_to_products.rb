class AddUserToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :users, index: true
  end
end
