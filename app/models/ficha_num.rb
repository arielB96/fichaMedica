class FichaNum < ApplicationRecord

	validates :numero, :categori_id, :puesto_salud_id, presence: true

	belongs_to :categori
	has_many :pacientes
	belongs_to :puesto_salud

end
