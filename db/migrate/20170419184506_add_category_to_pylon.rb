class AddCategoryToPylon < ActiveRecord::Migration[5.0]
  def change
    add_reference :pylons, :category, foreign_key: true
  end
end
