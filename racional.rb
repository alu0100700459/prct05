# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"
require "./lcm.rb"

class Fraccion
  attr_reader :a, :b

  def initialize(a = 0, b = 1)
    @a = a

    if b != 0
      @b = b
    else
      prints 'ERROR: El denominador no puede ser 0.'
      @b = 1
    end

    self.normalizar
  end

  def a=(a)
    @a = a
    self.normalizar
  end

  def b=(b)
    if b != 0
      @b = b
      self.normalizar
    else
      prints 'ERROR: El denominador no puede ser 0.'
    end
  end

  def normalizar
    mcd = gcd(a, b)
    if mcd != 0
      @a /= mcd
      @b /= mcd
    end
  end

  def suma(otra)
    denom = lcm(@b, otra.b)

    a1 = (denom/@b)*@a
    a2 = (denom/otra.b)*otra.a

    Fraccion.new(a1+a2, denom)
  end

  def resta(otra)
    denom = lcm(@b, otra.b)

    a1 = (denom/@b)*@a
    a2 = (denom/otra.b)*otra.a

    Fraccion.new(a1-a2, denom)
  end

  def producto(otra)

  end

  def division(otra)

  end

  def to_s

  end

end
