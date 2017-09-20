class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :nombreMedicamento
      t.string :fechaEntrada
      t.string :fechaVencimiento
      t.text :descrip
      t.integer :cantidad

      t.timestamps
    end
  end
end
