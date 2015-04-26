class CreateRibbits < ActiveRecord::Migration
  def change
    create_table :ribbits do |t|
      t.text :content
      t.integer :userid

      t.timestamps null: false
    end
  end
end
