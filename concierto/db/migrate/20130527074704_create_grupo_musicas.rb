class CreateGrupoMusicas < ActiveRecord::Migration
  def change
    create_table :grupo_musicas do |t|
      t.string :nombre
      t.integer :estilo_musica_id
      t.integer :alumno

      t.timestamps
    end
  end
end
