class AddPhotoToEquipe < ActiveRecord::Migration[5.2]
  def change
    add_column :equipes, :photo, :string
    add_column :equipes, :name, :string
    add_column :equipes, :bio, :string
    add_column :equipes, :formation, :string
    add_column :equipes, :engagement, :string
  end
end
