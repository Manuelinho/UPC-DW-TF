class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :nombre
      t.string :direccion
      t.integer :distrito_id
      t.string :direccGoogle
      t.string :telFijo

      t.timestamps
    end
  end
end
