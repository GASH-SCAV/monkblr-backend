class AddPasswordToMonk < ActiveRecord::Migration[7.0]
  def change
    add_column :monks, :password, :string
  end
end
