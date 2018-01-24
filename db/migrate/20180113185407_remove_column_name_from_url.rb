class RemoveColumnNameFromUrl < ActiveRecord::Migration[5.1]
  def change
    remove_column :urls, :name, :string
  end
end
