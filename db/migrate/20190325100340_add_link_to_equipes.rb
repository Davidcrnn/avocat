class AddLinkToEquipes < ActiveRecord::Migration[5.2]
  def change
    add_column :equipes, :email, :string
    add_column :equipes, :linkedin, :string
  end
end
