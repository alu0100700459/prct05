# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"
require "./lcm.rb"

class Fraccion
  # Indicamos que se deben crear métodos getter por defecto para las
  # variables de instancia @a y @b.
  attr_reader :a, :b

  # Constructor de la clase. Lanza una excepción si el valor de b
  # es 0.
  def initialize(a = 0, b = 1)
    @a = a

    if b != 0
      @b = b
    else
      raise 'ERROR: El denominador no puede ser 0.'
      @b = 1
    end

    self.normalizar
  end

  # Método setter de la variable de instancia @a
  def a=(a)
    @a = a
    self.normalizar
  end

  # Método setter de la variable de instancia @b
  # No permite que la b sea cambiada al valor de 0.
  def b=(b)
    if b != 0
      @b = b
      self.normalizar
    else
      raise 'ERROR: El denominador no puede ser 0.'
    end
  end

  # Este método hace que todas las fracciones que tienen el mismo valor
  # se representen de la misma forma, para poder compararlos directamente.
  def normalizar

    # Si algún término es negativo, que sea el numerador
    if @b < 0
      @a = -@a
      @b = -@b
    end

    mcd = gcd(@a, @b)
    if mcd != 0
      @a /= mcd
      @b /= mcd
    end
  end

  # Realiza la suma entre esta instancia y otra y devuelve
  # la Fraccion resultado
  def suma(otra)
    denom = lcm(@b, otra.b)

    a1 = (denom/@b)*@a
    a2 = (denom/otra.b)*otra.a

    Fraccion.new(a1+a2, denom)
  end

  # Realiza la resta entre esta instancia y otra y devuelve
  # la Fraccion resultado
  def resta(otra)
    denom = lcm(@b, otra.b)

    a1 = (denom/@b)*@a
    a2 = (denom/otra.b)*otra.a

    Fraccion.new(a1-a2, denom)
  end

  # Realiza el producto entre esta instancia y otra y devuelve
  # la Fraccion resultado
  def producto(otra)
    Fraccion.new(@a*otra.a, @b*otra.b)
  end

  # Realiza la división entre esta instancia y otra y devuelve
  # la Fraccion resultado
  def division(otra)
    Fraccion.new(@a*otra.b, @b*otra.a)
  end

  # Método que permite representar la instancia como una cadena
  # de texto.
  def to_s
    "#{@a}/#{@b}"
  end

end
