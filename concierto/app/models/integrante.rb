class Integrante < ActiveRecord::Base
  attr_accessible :grupo_musical_id, :usuario_id
  belongs_to :usuario
  belongs_to :grupo_musical
end
