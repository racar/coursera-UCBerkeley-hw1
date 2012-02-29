require 'test/unit'
require './AccesorHistory.rb'
class AccesorHistoryTest < Test::Unit::TestCase 
  def test_attr_accessor_with_history
    f = Foo.new
    f.bar = 1
    f.bar = 2
        
    assert_equal [nil,1,2], f.bar_history

  end 
  
  
  def test_attr_accessor_with_history_forget_before
    f = Foo.new
    f.bar = 1
    f.bar = 2
    f = Foo.new
    f.bar = 1
    f.bar = 2
    f = Foo.new
    f. bar = 4
    f.bar_history
    
    assert_equal [nil,4], f.bar_history

  end 
  
  
  def test_attr_accessor_with_history_multiple
    f = Foo.new
    f.bar = 1
    f.nombre = 'armando' 
    f. bar = 4
    f.bar_history
    
    assert_equal [nil,1,4], f.bar_history
    assert_equal [nil,'armando'], f.nombre_history

  end 
  
  
end