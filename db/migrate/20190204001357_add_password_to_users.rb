class AddPasswordToUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :second_name
      t.string :email
      t.string :password
      t.string :password_digest

      t.timestamps
  end
end
