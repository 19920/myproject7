class CreateRiders < ActiveRecord::Migration[5.1]
  def change
    create_table :riders do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
