class Cocktail < ApplicationRecord
  has_many :reviews
  belongs_to :user
  # include PgSearch
  # pg_search_scope :search_by_term, against: [:ingredients, :name],
  #   using: {
  #     tsearch: {
  #       any_word: true,
  #       prefix: true
  #     }
  #   }
  def self.search(term)
#     SELECT *
#   FROM "public"."cocktails"
#  WHERE Name LIKE '%Ale%'
    Cocktail.where('name ILIKE ?', "%#{term}%")
    .or(Cocktail.where('ingredients ILIKE ?', "%#{term}%"))
  end
end
