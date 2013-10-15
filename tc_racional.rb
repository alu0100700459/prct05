#encoding: utf-8
# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

	def test_constructor
		assert_equal(Fraccion.new(0, 1).a, Fraccion.new(0,5).a)
		assert_equal(Fraccion.new(0, 1).b, Fraccion.new(0,5).b)
		assert_equal(Fraccion.new(2, 3).a, Fraccion.new(8, 12).a)
		assert_equal(Fraccion.new(2, 3).b, Fraccion.new(8, 12).b)
		assert_raise (RuntimeError) { Fraccion.new(3, 0) }
	end

	def test_suma
		f1 = Fraccion.new(2, 9)
		f2 = Fraccion.new(3, 6) # La fracción no está simplificada
		f3 = Fraccion.new(26, 36) # f3 = f1+f2, f3 no está simplificada
		assert_equal(f3.a, f1.suma(f2).a)
		assert_equal(f3.b, f1.suma(f2).b)

		# Cambiamos los signos para ver si la suma es todavía correcta
		f1.b=-9
		f2.a=-3
		f3.a=31
		f3.b=-18
		assert_equal(f3.a, f1.suma(f2).a)
		assert_equal(f3.b, f1.suma(f2).b)
	end

end
