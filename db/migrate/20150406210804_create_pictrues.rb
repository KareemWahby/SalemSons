class CreatePictrues < ActiveRecord::Migration
  def change
    create_table :pictrues do |t|
    	t.string :caption
    end
  end
end
