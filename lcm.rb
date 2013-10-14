# Método que computa el mínimo común múltiplo (least common multiple)
# de dos números enteros a y b.

require "./gcd.rb"

def lcm(a, b)
  ((a*b).abs)/gcd(a, b)
end

