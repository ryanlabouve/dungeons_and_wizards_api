class Battle < ApplicationRecord
  before_save :set_defaults, :check_victory

  private
  def set_defaults
    self.damage_total ||= 0
    self.hp_total ||= 10000
  end

  def check_victory
    self.victory_at = Time.zone.now if self.damage_total > self.hp_total
  end
end
