class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks # mostrando a rota do schema

  validates :name, uniqueness: true, presence: true

end
