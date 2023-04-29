class ChangeNumToStr < ActiveRecord::Migration[6.1]
  def change
    change_column :cards, :num, :string
  end
end
