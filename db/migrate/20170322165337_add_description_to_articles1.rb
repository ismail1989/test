class AddDescriptionToArticles1 < ActiveRecord::Migration
  def change
    add_column :articles1s, :created_at, :datetime
    add_column :articles1s, :updated_at, :datetime
  end
end
