class CreateCarpuntos < ActiveRecord::Migration[6.0]
  def change
    create_table :carpuntos do |t|
      t.string :start
      t.string :end
      t.boolean :oil
      t.datetime :oiltime
      t.boolean :fuel
      t.datetime :fueltime

      t.references :car, null: false, foreign_key: true
      t.timestamps
    end
  end
end
