class Punto < ApplicationRecord
   belongs_to :user
   belongs_to :genba

   PERIOD = ['○  Day', '●  Night', '休み  DayOff', '◻︎  Morning', '◼︎  Afternoon']

   validates :period, inclusion: { in: PERIOD }
end
