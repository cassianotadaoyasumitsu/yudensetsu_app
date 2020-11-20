class Punto < ApplicationRecord
   belongs_to :user
   belongs_to :genba

   PERIOD = %w(Day Night DayOff Morning Afternoon)

   validates :period, inclusion: { in: PERIOD }
end
