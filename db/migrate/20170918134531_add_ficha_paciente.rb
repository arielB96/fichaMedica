class AddFichaPaciente < ActiveRecord::Migration[5.1]
  def change
  	add_reference :ficha_nums, :paciente
  end
end
