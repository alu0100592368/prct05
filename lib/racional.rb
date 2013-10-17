# Clase para crear objetos racionales

require "./lib/gcd.rb"
require "./lib/lcm.rb"

class Fraccion
  
  # Constructor de la clase, si recibe 2 argumentos el primero
  # es el numerador y el segundo el denominador. 
  # Si recibe 1 es el numerador con denominador 1.
  def initialize(*args)
    if args.size == 2    
      x = mcd(args[0],args[1])
      @a = args[0] / x
      @b = args[1] / x
    else
      @a = args[0]
      @b = 1
    end
  end

  # Devuelve una cadena con la representación del racional
  def to_s
    "#{@a}/#{@b}"
  end
  
  
end
