class CreateActinfos < ActiveRecord::Migration
  def change
    create_table :actinfos do |t|
      t.string :time
      t.integer :money
      t.text :info

      t.timestamps
    end
  end
end
