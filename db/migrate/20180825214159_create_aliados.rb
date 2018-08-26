class CreateAliados < ActiveRecord::Migration[5.2]
  def change
    create_table :aliados do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
