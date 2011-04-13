class PostSweeper < ActionController::Caching::Sweeper
  observe Post

  def after_save(post)
    expire_cache post
  end

  def after_destroy(post)
    expire_cache post
  end

protected
  def expire_cache(post)
    expire_page :controller => "/posts", :action => "show", :id => post
  end
end