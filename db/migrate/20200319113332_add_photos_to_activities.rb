class AddPhotosToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :photo, :string
  end
end
