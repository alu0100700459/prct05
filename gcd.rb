# Método que computa el máximo común divisor (greatest common divisor)
# de dos números enteros u y v.

def gcd(u, v)
  u, v = u.abs, v.abs
  while v != 0
    u, v = v, u % v
  end
  u
end
