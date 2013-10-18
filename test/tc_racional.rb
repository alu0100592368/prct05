# Pruebas Unitarias asociadas a la clase Fraccion
require "./lib/racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
  
  # Tests para el método suma
  def test_suma
    assert_equal([5, 1], Fraccion.new(2).suma(3))        # (2) + (3) = (5)
    assert_equal([11, 10], Fraccion.new(3,5).suma(1,2))  # (3/5) + (1/2) = (11/10)
    assert_equal([17, 6], Fraccion.new(5,2).suma(2,6))   # (5/2) + (2/6) = (17/6)
    assert_equal([4, 1], Fraccion.new(15,5).suma(5,5))   # (15/5) + (5/5) = (4)
  end

  # Tests para el método resta
  def test_resta
    assert_equal([-1, 1], Fraccion.new(2).resta(3))      # (2/1) - (3/1) = (-1)
    assert_equal([1, 10], Fraccion.new(3,5).resta(1,2))  # (3/5) - (1/2) = (1/10)
    assert_equal([13, 6], Fraccion.new(5,2).resta(2,6))  # (5/2) - (2/6) = (13/6)
    assert_equal([2, 1], Fraccion.new(15,5).resta(5,5))  # (15/5) - (5/5) = (2)
  end

end