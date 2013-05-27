class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombres
      t.string :apePaterno
      t.string :apeMaterno
      t.string :nroDocumento
      t.string :correo
      t.string :contrasena
      t.integer :tipo_persona_id
      t.integer :sexo_id
      t.integer :tipo_documento_id

      t.timestamps
    end
  end
end
