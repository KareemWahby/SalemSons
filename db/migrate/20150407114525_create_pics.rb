class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :caption
    end
  end
end
