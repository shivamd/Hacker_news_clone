class CreateNotes < ActiveRecord::Migration
  def change

  	create_table :notes do |t|
  		t.text :content
  		t.references :user
  		t.references :comment
  	end
  end
end
