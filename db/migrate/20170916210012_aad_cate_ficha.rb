class AadCateFicha < ActiveRecord::Migration[5.1]
  def change
  	add_reference :ficha_nums, :categori
  end
end
