class CreateActualites < ActiveRecord::Migration[5.2]
  def change
    create_table :actualites do |t|
      t.text :contenu
      t.string :title
      t.string :auteur
      t.string :date
      t.timestamps
    end
  end
end
