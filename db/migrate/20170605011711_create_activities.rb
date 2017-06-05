class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :message
      t.string :activity_by

      t.timestamps
    end
  end
end
