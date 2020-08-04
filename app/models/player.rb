class Player < ApplicationRecord
  has_many :collabs
  has_many :albums, through: :collabs

  validates_presence_of :name
end
