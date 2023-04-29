class AddNumToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :variety, :string
  end
end
