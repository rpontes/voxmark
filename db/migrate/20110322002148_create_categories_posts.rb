class CreateCategoriesPosts < ActiveRecord::Migration
  def self.up
    create_table "categories_posts", :id => false, :force => true do |t|
      t.integer "post_id", :null => false
      t.integer "category_id", :null => false
    end    
  end

  def self.down
    drop_table "categories_posts"
  end
end
