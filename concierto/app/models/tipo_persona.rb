class TipoPersona < ActiveRecord::Base
  attr_accessible :nombre
  has_many :usuarios  
end
