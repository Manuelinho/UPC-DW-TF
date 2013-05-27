class GrupoMusica < ActiveRecord::Base
  attr_accessible :alumno, :estilo_musica_id, :nombre
  has_many :integrantes
  has_many :usuarios, :through => :integrantes
end
