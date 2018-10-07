class AddOtherThingsToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :name, :string
    add_column :comments, :email, :string
    add_column :comments, :website, :string
    add_column :comments, :save_me, :boolean
  end
end
