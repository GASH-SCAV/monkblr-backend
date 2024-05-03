class CreateMonks < ActiveRecord::Migration[7.0]
  def change
    create_table :monks do |t|
      t.string :name

      t.timestamps
    end
  end
end
