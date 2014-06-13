class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :article_id, nil: false
      t.timestamps
    end
  end
end
