class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :customer
      t.string :location
      t.string :valueOfContract
      t.string :duration
      t.string :scope

      t.timestamps null: false
    end
  end
end
