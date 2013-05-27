class CreateIntegrantes < ActiveRecord::Migration
  def change
    create_table :integrantes do |t|
      t.integer :usuario_id
      t.integer :grupo_musical_id

      t.timestamps
    end
  end
end
