class AddSuccessfulColumnToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :successful, :boolean
  end
end
