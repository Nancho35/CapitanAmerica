class CreateMisiones < ActiveRecord::Migration[5.2]
  def change
    create_table :misiones do |t|
      t.string :nombre
      t.string :locacion
      t.datetime :timestamp
      t.string :heroes_requeridos
      t.timestamps
    end
  end
end
