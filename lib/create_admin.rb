User.transaction do
  User.create( :name => 'admin', :password => 'admin', :password_confirmation => 'admin', :address => '13111 W.Marlette Ave. Litchfield Park, AZ 85340')
end

User.transaction do
  @user = User.find_by_name('admin')
  @products = Product.all
  
  @products.each do |product|
    product.users_id = @user.id
    product.update_attributes(:users_id => product.users_id)
  end
end