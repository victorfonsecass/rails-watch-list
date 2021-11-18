class Bookmark < ApplicationRecord
   belongs_to :movie
   belongs_to :list

   validates :movie_id, :list, uniqueness: {scope: :list_id}
   validates :comment, length: { minimum: 6 }
end
