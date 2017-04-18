class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :type
      t.string :address
      t.string :website
      t.string :tel
      t.float :lat
      t.float :lng
      t.date :exp_date

      t.timestamps
    end
  end
end
