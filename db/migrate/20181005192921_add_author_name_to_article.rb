class AddAuthorNameToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :author_name, :string
  end
end
