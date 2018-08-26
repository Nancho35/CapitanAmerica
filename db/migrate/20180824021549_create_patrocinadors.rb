class CreatePatrocinadors < ActiveRecord::Migration[5.2]
  def change
    create_table :patrocinadors do |t|
      t.string :nombre
      t.integer :nit
      t.text :descripcion
      t.float :dinero

      t.timestamps
    end
  end
end
