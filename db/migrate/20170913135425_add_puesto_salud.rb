class AddPuestoSalud < ActiveRecord::Migration[5.1]
  def change
  	add_reference :ficha_nums, :puesto_salud
  end
end
