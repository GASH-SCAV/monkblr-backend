class AddTitleToMonk < ActiveRecord::Migration[7.0]
  def change
    add_column :monks, :title, :string
    add_column :monks, :location, :string
  end
end
