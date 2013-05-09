class AudirtCode < ActiveRecord::Base
  attr_accessible :code

  belongs_to :programa
end
