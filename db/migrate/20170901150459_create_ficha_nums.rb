class CreateFichaNums < ActiveRecord::Migration[5.1]
  def change
    create_table :ficha_nums do |t|
      t.string :numero

      t.timestamps
    end
  end
end
