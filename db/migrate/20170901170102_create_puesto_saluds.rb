class CreatePuestoSaluds < ActiveRecord::Migration[5.1]
  def change
    create_table :puesto_saluds do |t|
      t.string :nombre
      t.string :contacto
      t.string :localidad
      t.string :distrito
      t.string :direccion
      t.string :regionSanitaria

      t.timestamps
    end
  end
end
