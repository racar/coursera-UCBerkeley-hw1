require 'test/unit'
require './Dessert.rb'
class DessertTest < Test::Unit::TestCase 
  
  def test_delicious
  dessert = Dessert.new(0,0)
  
  assert_equal true, dessert.delicious?
  
  dessert = JellyBean.new(0,0,'fresa')
  assert_equal true, dessert.delicious?
  
  dessert.flavor='black licorice'
  puts dessert.flavor
  puts dessert.delicious?
  assert_equal false, dessert.delicious?
  
  end
  
  def test_healthy
    dessert = Dessert.new(0,0)
    dessert.calories = 100
    assert dessert.healthy?
    assert_equal 100, dessert.calories
  end
end