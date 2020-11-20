class CreatePuntos < ActiveRecord::Migration[6.0]
  def change
    create_table :puntos do |t|
      t.datetime :in
      t.datetime :out
      t.text :note
      t.string :period
      t.boolean :day
      t.boolean :night
      t.boolean :day_off


      t.references :user, null: false, foreign_key: true
      t.references :genba, null: false, foreign_key: true

      t.timestamps
    end
  end
end
