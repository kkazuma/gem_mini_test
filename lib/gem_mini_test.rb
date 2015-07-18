require "gem_mini_test/version"

module GemMiniTest
  # Your code goes here...
  class Main
    def odd?(n)
      if n%2 == 1 then
        return true
      else
        return false
      end
    end
    def check_number?(n)
      if n.to_i.size == 4 && n.to_i%2==0 then
        return true
      else
        return false
      end
    end
    def enough_length?(s)
      if s.size >= 3 && s.size <= 8 then
        return true
      else
        return false
      end
    end
    def divide(a, b)
      return a/b
    end
    def fizz_buzz(s)
      rs = ""
      if s%3==0 then
        rs += "Fizz"
      end
      if s%5==0 then
        rs += "Buzz"
      end
      return rs
    end
  end
end
