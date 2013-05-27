class Usuario < ActiveRecord::Base
  attr_accessible :apeMaterno, :apePaterno, :contrasena, :correo, :nombres, :nroDocumento, :sexo_id, :tipo_documento_id, :tipo_persona_id
  belongs_to :tipo_persona
  belongs_to :tipo_documento
  belongs_to :sexo
  has_many :integrantes
  has_many :grupo_musicas, :through => :integrantes


  def self.validar_login(correo, contrasena)
  	usuario = Usuario.find_by_correo(correo)

  	if usuario && usuario.contrasena == contrasena
  		usuario
  	else
  		nil
  	end  	
  end
end
