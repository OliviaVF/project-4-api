class CreatePylons < ActiveRecord::Migration[5.0]
  def change
    create_table :pylons do |t|
      t.string :category
      t.text :comment
      t.references :user, foreign_key: true
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
