require "spec_helper"

describe Post do

  let :post do
    Factory.build(:post)
  end

  context "slug" do
    it "should be parameterized to be used in url's" do
      post.slug = "Meu post sUper légal!!!"
      post.save!
      post.slug.should == "meu-post-super-legal"
    end

    describe "when doesn't have a custom slug" do
      it "should generate one based on title" do
        post.slug = nil
        post.title = "Meu Post"

        post.slug.should be_nil
        post.save!
        post.slug.should_not be_nil
        post.slug.should == "meu-post"
      end
    end
    
    describe "when have a custom slug" do
      it "should use the existing one" do
        post.title = "My Super Post"
        post.slug = "my-slug"
        post.save!
        post.slug.should == "my-slug"
      end
    end    
  end

  context "validations" do
    it "should validates presence of name"
    it "should validates presence of body"
    it "should validates presence of author"
    it "should validates presence of slug"
  end

end