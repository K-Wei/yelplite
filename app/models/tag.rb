class Tag < ApplicationRecord
  # Direct associations

  has_many   :descriptors,
             :dependent => :destroy

  # Indirect associations

  has_many   :restaurants,
             :through => :descriptors,
             :source => :restaurant

  # Validations

end
