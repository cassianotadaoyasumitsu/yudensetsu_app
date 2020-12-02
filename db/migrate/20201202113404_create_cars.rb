class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :car_name
      t.string :car_plate
      t.string :car_number

      t.timestamps
    end
  end
end
