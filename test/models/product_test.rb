require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products
  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:price].any?
  end
  test "product price must be positive" do
    product = Product.new(title: products[:ruby].title, description: "yyy", image_url: "zzz.jpg", price: 4)
    assert product.invalid?
    assert_equal ['has already been taken'], product.errors[:title]
  end
end
