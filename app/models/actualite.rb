class Actualite < ApplicationRecord
  validates :title, presence: true
  validates :contenu, presence: true
  validates :auteur, presence: true
  validates :day, presence: true
  validates :month, presence: true
  validates :year, presence: true
end
