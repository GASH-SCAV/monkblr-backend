class CreateSanctifies < ActiveRecord::Migration[7.0]
  def change
    create_table :sanctifies do |t|
      t.belongs_to :post, null: false, foreign_key: true
      t.belongs_to :monk, null: false, foreign_key: true

      t.timestamps
    end
  end
end
