class Order < ActiveRecord::Base
  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  geocoded_by :address
  after_validation :geocode
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES
  
  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
  
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
