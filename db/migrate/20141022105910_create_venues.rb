class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :phone_number
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :email
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.float :space
      t.float :capacity
      t.float :available_parking
      t.integer :changing_rooms
      t.integer :restrooms
      t.integer :electric_outlets
      t.boolean :indoors
      t.boolean :outdoors
      t.boolean :handicap
      t.boolean :coordinator
      t.float :space
      t.float :capacity

      t.timestamps
    end
  end
end
