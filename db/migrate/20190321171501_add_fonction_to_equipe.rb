class AddFonctionToEquipe < ActiveRecord::Migration[5.2]
  def change
    add_column :equipes, :fonction, :string
  end
end
