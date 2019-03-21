class AddDateToActualites < ActiveRecord::Migration[5.2]
  def change
    add_column :actualites , :day, :string
    add_column :actualites , :month, :string
    add_column :actualites , :year, :string
  end
end
