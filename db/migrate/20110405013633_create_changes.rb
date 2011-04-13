class CreateChanges < ActiveRecord::Migration
  def self.up
    create_table :changes do |t|
      t.string :entry
      t.string :category
      t.date :released_on

      t.timestamps
    end
  end

  def self.down
    drop_table :changes
  end
end