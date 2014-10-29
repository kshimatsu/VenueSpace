class AddLatitudeToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :latitude, :float
  end
end
