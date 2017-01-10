class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :ownerships,
             :dependent => :destroy

  has_many   :descriptors,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  has_many   :restaurant_owners,
             :through => :user_reviews,
             :source => :user_reviews

  has_many   :user_reviews,
             :through => :reviews,
             :source => :user

  has_many   :tags,
             :through => :descriptors,
             :source => :tag

  # Validations

end
