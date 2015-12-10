class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: :true
  validates :price, numericality: {greater_than_or_equal: 0.01}
  validates :image_url, allow_blank: :true, format: {with: %r{\.(gif|jpg|png)\Z}i, message: 'must be a url for gif,png or jpg'}
  
  def self.latest
    Product.order(:updated_at).last
  end
end
