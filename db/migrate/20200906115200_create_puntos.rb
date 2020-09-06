class CreatePuntos < ActiveRecord::Migration[6.0]
  def change
    create_table :puntos do |t|
      t.time :in
      t.time :out
      t.text :note
      t.boolean :day
      t.boolean :night
      t.boolean :day_off


      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
