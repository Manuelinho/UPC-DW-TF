class CreateEstiloMusicas < ActiveRecord::Migration
  def change
    create_table :estilo_musicas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
