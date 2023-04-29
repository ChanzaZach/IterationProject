class RenameTypeToVariety < ActiveRecord::Migration[6.1]
  def change
    rename_column(:cards, :type, :variety)
  end
end
