class Actualite < ApplicationRecord
  validates :title, presence: true
  validates :contenu, presence: true
  validates :auteur, presence: true
  validates :date, presence: true
end
