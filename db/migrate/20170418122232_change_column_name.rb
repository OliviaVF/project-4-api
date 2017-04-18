class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :listings, :type, :type_of_listing
  end
end
