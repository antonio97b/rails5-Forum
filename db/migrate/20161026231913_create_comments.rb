class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :post, foreign_key: true
      t.integer :parent_id

      t.timestamps
    end
  end
end
