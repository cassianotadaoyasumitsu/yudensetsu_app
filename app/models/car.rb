class Car < ApplicationRecord
  has_many :carpuntos, dependent: :destroy
end
