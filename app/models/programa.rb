class Programa < ActiveRecord::Base
  attr_accessible :name

  belongs_to :cadena
  has_many :audirt_codes
end
