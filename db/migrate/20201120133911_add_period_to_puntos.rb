class AddPeriodToPuntos < ActiveRecord::Migration[6.0]
  def change
    add_column :puntos, :period, :string
  end
end
