class CreateTipoPersonas < ActiveRecord::Migration
  def change
    create_table :tipo_personas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
