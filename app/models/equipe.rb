class Equipe < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :bio, presence: true
  validates :engagement, presence: true
  validates :name, presence: true
  validates :fonction, presence: true
  validates :photo, presence: true
  validates :formation, presence: true
end
