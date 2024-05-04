class AddCounterCachesToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :sanctifies_count, :integer
    add_column :posts, :condemns_count, :integer
  end
end
