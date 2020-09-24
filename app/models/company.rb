class Company < ApplicationRecord
  has_many :genbas, dependent: :destroy
  has_many :puntos, dependent: :destroy

  include PgSearch::Model
    pg_search_scope :search_company_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true }
    }

end
