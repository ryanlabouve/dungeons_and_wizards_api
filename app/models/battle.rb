class Battle < ApplicationRecord
  before_create :set_defaults

  def set_defaults
    self.damage_total = 0
    self.hp_total = 1000
  end
end
