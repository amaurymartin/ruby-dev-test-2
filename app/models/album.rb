class Album < ApplicationRecord
  has_many :collabs
  has_many :players, through: :collabs

  validates_presence_of :name
  validate :has_one_player_at_least

  def has_one_player_at_least
    if players.empty?
      errors.add(:players, "need one player at least")
    end
  end
end
