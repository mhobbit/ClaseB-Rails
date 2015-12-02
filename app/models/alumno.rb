class Alumno < ActiveRecord::Base
	has_many :estadisticas

	validates :rut
end