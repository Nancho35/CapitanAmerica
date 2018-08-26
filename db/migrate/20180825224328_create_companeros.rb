class CreateCompaneros < ActiveRecord::Migration[5.2]
  def change
    create_table :companeros do |t|
      t.string :nombre
      t.text :descripcion
      t.string :especialidad

      t.timestamps
    end
  end
end
