# Pruebas Unitarias asociadas a la clase Fraccion
require "./lib/racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

  # Tests para el método to_s
  def test_to_s
    assert_equal("2/1", Fraccion.new(2).to_s)       
    assert_equal("3/5", Fraccion.new(3,5).to_s) 
    assert_equal("5/2", Fraccion.new(5,2).to_s)  
    assert_equal("3/1", Fraccion.new(15,5).to_s)
  end   
  
  # Tests para el método suma
  def test_suma
    assert_equal([5, 1], Fraccion.new(2).suma(3))        # (2) + (3) = (5)
    assert_equal([11, 10], Fraccion.new(3,5).suma(1,2))  # (3/5) + (1/2) = (11/10)
    assert_equal([17, 6], Fraccion.new(5,2).suma(2,6))   # (5/2) + (2/6) = (17/6)
    assert_equal([4, 1], Fraccion.new(15,5).suma(5,5))   # (15/5) + (5/5) = (4)
  end

  # Tests para el método resta
  def test_resta
    assert_equal([-1, 1], Fraccion.new(2).resta(3))      # (2) - (3) = (-1)
    assert_equal([1, 10], Fraccion.new(3,5).resta(1,2))  # (3/5) - (1/2) = (1/10)
    assert_equal([13, 6], Fraccion.new(5,2).resta(2,6))  # (5/2) - (2/6) = (13/6)
    assert_equal([2, 1], Fraccion.new(15,5).resta(5,5))  # (15/5) - (5/5) = (2)
  end

  # Tests para el método producto
  def test_producto
    assert_equal([6, 1], Fraccion.new(2).producto(3))       # (2) * (3) = (6)
    assert_equal([3, 10], Fraccion.new(3,5).producto(1,2))  # (3/5) * (1/2) = (3/10)
    assert_equal([5, 6], Fraccion.new(5,2).producto(2,6))   # (5/2) * (2/6) = (5/6)
    assert_equal([3, 1], Fraccion.new(15,5).producto(5,5))  # (15/5) * (5/5) = (3)
  end

  # Tests para el método división
  def test_division
    assert_equal([2, 3], Fraccion.new(2).division(3))       # (2) / (3) = (2/3)
    assert_equal([6, 5], Fraccion.new(3,5).division(1,2))   # (3/5) / (1/2) = (6/5)
    assert_equal([15, 2], Fraccion.new(5,2).division(2,6))  # (5/2) / (2/6) = (15/2)
    assert_equal([3, 1], Fraccion.new(15,5).division(5,5))  # (15/5) / (5/5) = (3)
  end

end