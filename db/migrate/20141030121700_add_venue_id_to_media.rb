class AddVenueIdToMedia < ActiveRecord::Migration
  def change
    add_column :media, :venue_id, :integer
  end
end
