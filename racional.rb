# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

  def initialize(a = 0, b = 1)

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
