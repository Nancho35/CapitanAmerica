class CreateEnemigos < ActiveRecord::Migration[5.2]
  def change
    create_table :enemigos do |t|
      t.string :nombre
      t.integer :edad
      t.text :poderes
      t.timestamps
    end
  end
end
