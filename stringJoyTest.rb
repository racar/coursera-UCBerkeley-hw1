require 'test/unit'
require './stringJoy.rb'
class StringJoyTest < Test::Unit::TestCase 
  def testPalindrome
    
    assert_equal false,palindrome?("Abracadabra"),'fail case'# => false (nil is also ok)
    assert palindrome?('meem'),'basic palindrome'
    assert palindrome?("A man, a plan, a canal -- Panama"),'upper case and spaces' #=> true 
    assert palindrome?("Madam, I'm Adam-!"),'special chars' # => true 
    # false,stringJoy.palindrome?("Abracadabra"),'fail case'# => false (nil is also ok)
  end
  
  def testCountWords
    stringJoy = StringJoy.new
    r = {"cuenta"=>3, "cuantos"=>1, "count"=>2, "many"=>1, "how"=>1}
    assert_equal r, count_words(" Cuenta cuantos   Count how     MANY count cuenta   cuenta")
    
    
    r = {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
    assert_equal r, count_words("A man, a plan, a canal -- Panama")
    
    r = {'doo' => 3, 'bee' => 2}
    assert_equal r, count_words("Doo bee doo bee doo")

    
  end
  
  
  
end