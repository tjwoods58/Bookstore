class User < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true, uniqueness: true
  has_many :products
  has_secure_password
  
  after_destroy :ensure_an_admin_remains
  
  private
    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete last user"
      end
    end
end
