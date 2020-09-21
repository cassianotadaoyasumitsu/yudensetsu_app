class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many_attached :photos
  has_many :puntos, dependent: :destroy
  ROLES = %w(Denkiya Shokucho)

  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true, numericality: { only_integer: true }
  validates :email, presence: true
  validates :role, inclusion: { in: ROLES }
  validates :level_employee, inclusion: { in: 0..5 }
  validates :level_employee, numericality: { only_integer: true }
  validates :started_date, presence: true

  include PgSearch::Model
    pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true }
    }
end
