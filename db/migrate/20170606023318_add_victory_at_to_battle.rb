class AddVictoryAtToBattle < ActiveRecord::Migration[5.0]
  def change
    add_column :battles, :victory_at, :datetime
  end
end
