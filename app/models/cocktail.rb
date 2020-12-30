class Cocktail < ApplicationRecord
  include PgSearch
  pg_search_scope :search_by_term, against: :ingredients,
    using: {
      tsearch: {
        any_word: true,
        prefix: true
      }
    }
end
