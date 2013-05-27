class Local < ActiveRecord::Base
  attr_accessible :direccGoogle, :direccion, :distrito_id, :nombre, :telFijo
  belongs_to :distrito  
end
