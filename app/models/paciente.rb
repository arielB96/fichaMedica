class Paciente < ApplicationRecord
	validates :nombre, presence: true

	belongs_to :ficha_num

	# attr_accessible :nombre, :apellido, :ci, :sexo, :edad, :lugarNacimiento, :nacionalidad, :etnia
end
