require 'test_helper'
class GemMiniTestTest < Minitest::Test

  def setup
        @main = GemMiniTest::Main.new
  end
  def test_that_it_has_a_version_number
    refute_nil ::GemMiniTest::VERSION
  end

  def test_it_does_something_useful
    assert true
  end
  def test_odd?
    assert @main.odd?(1)==true
    assert @main.odd?(2)==false
  end

  def test_check_number?
    assert @main.check_number?(0123) == false
    assert @main.check_number?(1234) == true
    assert @main.check_number?(1233) == false
  end
  def test_enough_length?
    assert @main.enough_length?("") == false
    assert @main.enough_length?("kamiyama") == true
    assert @main.enough_length?("kam") == true
    assert @main.enough_length?("kamiya") == true
    assert @main.enough_length?("kamiyaman") == false
  end
  def test_divide
    assert_raises @main.devide(100, 0)
  end
  def test_fizz_buzz
    assert @main.fizz_buzz(3) == "Fizz"
    assert @main.fizz_buzz(5) == "Buzz"
    assert @main.fizz_buzz(15) == "FizzBuzz"
    assert @main.fizz_buzz(2) == ""
  end
  def test_Hello?
    puts "Hello"
  end
end
