class Actualite < ApplicationRecord
  validates :titre, presence: true
  validates :contenu, presence: true
  validates :auteur, presence: true
  validates :date, presence: true
end
