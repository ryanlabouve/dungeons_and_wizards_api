class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :quote
      t.string :image
      t.jsonb :moves

      t.timestamps
    end
  end
end
