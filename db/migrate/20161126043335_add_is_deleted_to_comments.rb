class AddIsDeletedToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :is_deleted, :boolean, :null => false, :default => false
  end
end
