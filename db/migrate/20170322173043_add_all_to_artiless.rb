class AddAllToArtiless < ActiveRecord::Migration
  def change
    add_column :artilesses, :updated_at, :datetime
    add_column :artilesses, :created_at, :datetime
    add_column :artilesses, :title, :string
    add_column :artilesses, :description, :text
  end
end
