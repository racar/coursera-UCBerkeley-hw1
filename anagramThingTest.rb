require 'test/unit'
require './anagramThing.rb'
class AnagramThingTest < Test::Unit::TestCase 
  def test_combine_anagrams
    
    assert_equal [],[["cars", "racs", "scar"], ["four"], ["for"],["potatoes"], ["creams", "scream"]]\
    -combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams','scream'])
    
  #  assert_equal [["cars", "racs", "scar"], ["four"], ["for"],["potatoes"], ["creams", "scream"]],
  #   combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams','scream'])

  end 
end