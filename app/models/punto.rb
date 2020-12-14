class Punto < ApplicationRecord
   belongs_to :user
   belongs_to :genba


   PERIOD = ['⚪️ 日', '⚫️ 夜', '🟢 休みの日', '⬜️ 朝', '⬛️ 午後']

   validates :period, inclusion: { in: PERIOD }

end
