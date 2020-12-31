class Cocktail < ApplicationRecord
  has_many :reviews
  include PgSearch
  pg_search_scope :search_by_term, against: [:ingredients, :name],
    using: {
      tsearch: {
        any_word: true,
        prefix: true
      }
    }
end
