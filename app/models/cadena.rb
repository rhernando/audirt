class Cadena < ActiveRecord::Base
  attr_accessible :name, :logoname

  has_many :programas
end
