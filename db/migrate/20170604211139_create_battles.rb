class CreateBattles < ActiveRecord::Migration[5.0]
  def change
    create_table :battles do |t|
      t.integer :hp_total
      t.integer :damage_total

      t.timestamps
    end
  end
end
