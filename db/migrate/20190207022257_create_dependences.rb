class CreateDependences < ActiveRecord::Migration[5.2]
  def change
    create_table :dependences do |t|
      t.text :name
      t.text :description
      t.boolean :state

      t.timestamps
    end
  end
end
