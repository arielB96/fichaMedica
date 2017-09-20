class CreateDiagnosticos < ActiveRecord::Migration[5.1]
  def change
    create_table :diagnosticos do |t|
      t.string :fecha
      t.string :hora
      t.string :axilaRectal
      t.string :presionArterial
      t.string :pulso
      t.string :freCardiaca
      t.string :freRespi
      t.string :peso
      t.string :talla
      t.string :perimeCefalico
      t.string :masaCorpo
      t.string :circuAbdomi
      t.string :estadNutricional
      t.string :alimentacion
      t.string :desarrolloMadura
      t.string :tanner
      t.string :vacucacionVigente
      t.string :areaTecEspecialidades
      t.string :nuevo
      t.text :motivoConsul
      t.text :diagnostico
      t.text :examenFisico
      t.text :otroDiagnos
      t.text :tratamiento

      t.timestamps
    end
  end
end
