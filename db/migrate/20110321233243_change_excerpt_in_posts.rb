class ChangeExcerptInPosts < ActiveRecord::Migration
  def self.up
    change_column :posts, :excerpt, :text
  end

  def self.down
    change_column :posts, :excerpt, :string    
  end
end
