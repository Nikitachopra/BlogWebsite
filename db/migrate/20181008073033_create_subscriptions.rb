class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.boolean :unsubscribe

      t.timestamps
    end
  end
end
