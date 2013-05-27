class EstiloMusica < ActiveRecord::Base
  attr_accessible :nombre
  has_many :grupo_musicas  
end
