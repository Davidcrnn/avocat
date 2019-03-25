class ChangeBioToBeATextInEquipe < ActiveRecord::Migration[5.2]
  def change
    change_column :equipes, :bio, :text
    change_column :equipes, :formation, :text
    change_column :equipes, :engagement, :text

  end
end
