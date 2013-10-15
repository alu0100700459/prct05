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

end
