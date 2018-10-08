class CreateUserComments < ActiveRecord::Migration[5.2]
  def change
    create_table :user_comments do |t|
      t.string :content
      t.integer :article_id
      t.string :name
      t.string :email
      t.string :website
      t.boolean :save_me

      t.timestamps
    end
  end
end
