class Article < ApplicationRecord

  validates :titre, presence: true
  validates :date, presence: true
  validates :auteur, presence: true
  validates :description, presence: true

end
