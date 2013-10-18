# Clase para crear objetos racionales
require "./lib/gcd.rb"
require "./lib/lcm.rb"

class Fraccion
  
  # Constructor de la clase, si recibe 2 argumentos el primero
  # es el numerador y el segundo el denominador. 
  # Si recibe 1 es el numerador con denominador 1.
  def initialize(*args)
    if args.size == 2    
      x = gcd(args[0],args[1])
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
  

  # Dado un número c/d, devuelve dicho número reducido en fracción irreducible
  def irreducible(c, d)
    x = gcd(c,d)
    c = c / x
    d = d / x
    return c, d
  end
  

  # Devuelve un nuevo racional que suma al objeto que invoca el que le pasan como parámetro
  def suma(*args)
    if args.size == 2
      x, y = irreducible(args[0],args[1])  # Número expresado en fracción irreducible
    else
      x = args[0]
      y = 1
    end

    if (@b == y) # Igual denominador
      @a += x
    else         # Distinto denominador
      den = lcm(@b,y)
      num = ((den / @b) * @a) + ((den / y) * x)
      @a = num
      @b = den
    end

    return @a, @b
  end
  

  # Devuelve un nuevo racional que resta al objeto que invoca el que le pasan como parámetro
  def resta(*args)
    if args.size == 2
      x, y = irreducible(args[0],args[1]) # Número expresado en fracción irreducible
    else
      x = args[0]
      y = 1
    end

    if (@b == y) # Igual denominador
      @a -= x
    else         # Distinto denominador
      den = lcm(@b,y)
      num = ((den / @b) * @a) - ((den / y) * x)
      @a = num
      @b = den
    end

    return @a, @b
  end
  

  # Devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
  def producto(*args)
    if args.size == 2 
      x, y = irreducible(args[0],args[1]) # Número expresado en fracción irreducible
    else
      x = args[0]
      y = 1
    end

    @a = @a * x
    @b = @b * y

    return @a, @b
  end
  

  # Devuelve un nuevo racional que divide al objeto que invoca el que le pasan como parámetro
  def division(*args)
    if args.size == 2 
      x, y = irreducible(args[0],args[1]) # Número expresado en fracción irreducible
    else
      x = args[0]
      y = 1
    end

    @a = @a * y
    @b = @b * x

    return @a, @b
  end
end