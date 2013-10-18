# Pruebas Unitarias asociadas a la clase Fraccion
require "./lib/racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
  def test_suma
  	assert_equal([5, 1], Fraccion.new(2).suma(3))        # (2) + (3) = (5)
    assert_equal([7, 1], Fraccion.new(4,1).suma(3,1))  # (3/5) + (1/2) = (11/10)
    assert_equal([17, 6], Fraccion.new(5,2).suma(2,6))   # (5/2) + (2/6) = (17/6)
    assert_equal([4, 1], Fraccion.new(15,5).suma(5,5))   # (15/5) + (5/5) = (4)
  end

end