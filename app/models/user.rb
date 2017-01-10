class User < ApplicationRecord
  # Direct associations

  has_many   :ownerships,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  has_many   :owned_restaurants,
             :through => :reviewed_restaurants,
             :source => :reviewed_restaurants

  has_many   :reviewed_restaurants,
             :through => :reviews,
             :source => :restaurant

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
