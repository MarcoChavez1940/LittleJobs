class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.float :paymentAmount
      t.string :ubication

      t.timestamps
    end
  end
end
