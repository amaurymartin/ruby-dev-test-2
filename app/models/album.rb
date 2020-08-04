class Album < ApplicationRecord
  has_many :collabs
  has_many :players, through: :collabs

  validates_presence_of :name
end
