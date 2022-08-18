class RenameColumnNameToTitleInLists < ActiveRecord::Migration[7.0]
  def change
    rename_column :lists, :name, :title
  end
end
