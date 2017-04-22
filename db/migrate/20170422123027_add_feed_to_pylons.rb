class AddFeedToPylons < ActiveRecord::Migration[5.0]
  def change
    add_column :pylons, :feed, :boolean
  end
end
