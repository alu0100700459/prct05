# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  attr_reader :b
  attr_accessor :a

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

  def b=(b)
    if b != 0
      @b = b
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

  end

  def resta(otra)

  end

  def producto(otra)

  end

  def division(otra)

  end

  def to_s

  end

end
