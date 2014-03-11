User.transaction do
  User.create( :name => 'dave', :password => 'dave', :password_confirmation => 'dave', :address => 'Miami, FL', :description => '20000')
end

User.transaction do
  User.create( :name => 'mary', :password => 'mary', :password_confirmation => 'mary', :address => 'New York City, NY', :description => '2000001')
end

User.transaction do
  @user = User.find_by_name('dave')
  @product = Product.create( :title => 'Superman', :description => %{<p> Story of the Man of Steel </p>}, :image_url => open('app/assets/images/superman.jpg'), :price => 10.00, :popularity => 0)
  @product.users_id = @user.id
  @product.update_attributes(:users_id => @product.users_id)
end

User.transaction do
  @user = User.find_by_name('dave')
  @product = Product.create( :title => 'Flash', :description => %{<p> Story of the fastest man in the world </p>}, :image_url => open('app/assets/images/flash.jpg'), :price => 15.00, :popularity => 0)
  @product.users_id = @user.id
  @product.update_attributes(:users_id => @product.users_id)
end

User.transaction do
  @user = User.find_by_name('mary')
  @product = Product.create( :title => 'Ironman', :description => %{<p> Story of Tony Starks and his toys </p>}, :image_url => open('app/assets/images/iron.jpg'), :price => 20.00, :popularity => 0)
  @product.users_id = @user.id
  @product.update_attributes(:users_id => @product.users_id)
end

User.transaction do
  @user = User.find_by_name('mary')
  @product = Product.create( :title => 'Batman', :description => %{<p> Story of the Dark Knight </p>}, :image_url => open('app/assets/images/batman.jpg'), :price => 25.00, :popularity => 0)
  @product.users_id = @user.id
  @product.update_attributes(:users_id => @product.users_id)
end