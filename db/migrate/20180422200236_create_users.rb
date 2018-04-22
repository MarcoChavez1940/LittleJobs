class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :city
      t.string :genere
      t.integer :age

      t.timestamps
    end
  end
end
