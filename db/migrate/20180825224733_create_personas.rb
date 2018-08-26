class CreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :sexo
      t.integer :edad
      t.text :mision

      t.timestamps
    end
  end
end
