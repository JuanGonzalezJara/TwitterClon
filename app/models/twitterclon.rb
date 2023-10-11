class Twitterclon < ApplicationRecord
  include PgSearch::Model
  # pg_search_scope :search_by_name, against: :username
  pg_search_scope :search_twittclone, against: {
                                        username: "A",
                                        description: "B",
                                      }
end
