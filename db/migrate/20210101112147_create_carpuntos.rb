class CreateCarpuntos < ActiveRecord::Migration[6.0]
  def change
    create_table :carpuntos do |t|

      t.timestamps
    end
  end
end
