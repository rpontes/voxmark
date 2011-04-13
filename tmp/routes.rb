(in /Users/daniel/producer)
                   root        /(.:format)                                       {:action=>"index", :controller=>"pages"}
       new_user_session GET    /admin/users/sign_in(.:format)                    {:action=>"new", :controller=>"admin/sessions"}
           user_session POST   /admin/users/sign_in(.:format)                    {:action=>"create", :controller=>"admin/sessions"}
   destroy_user_session GET    /admin/users/sign_out(.:format)                   {:action=>"destroy", :controller=>"admin/sessions"}
          user_password POST   /admin/users/password(.:format)                   {:action=>"create", :controller=>"admin/passwords"}
      new_user_password GET    /admin/users/password/new(.:format)               {:action=>"new", :controller=>"admin/passwords"}
     edit_user_password GET    /admin/users/password/edit(.:format)              {:action=>"edit", :controller=>"admin/passwords"}
                        PUT    /admin/users/password(.:format)                   {:action=>"update", :controller=>"admin/passwords"}
             admin_root        /admin(.:format)                                  {:action=>"index", :controller=>"admin/dashboard"}
     assets_admin_posts GET    /admin/posts/assets(.:format)                     {:action=>"assets", :controller=>"admin/posts"}
    admin_post_comments GET    /admin/posts/:post_id/comments(.:format)          {:action=>"index", :controller=>"admin/comments"}
                        POST   /admin/posts/:post_id/comments(.:format)          {:action=>"create", :controller=>"admin/comments"}
 new_admin_post_comment GET    /admin/posts/:post_id/comments/new(.:format)      {:action=>"new", :controller=>"admin/comments"}
edit_admin_post_comment GET    /admin/posts/:post_id/comments/:id/edit(.:format) {:action=>"edit", :controller=>"admin/comments"}
     admin_post_comment GET    /admin/posts/:post_id/comments/:id(.:format)      {:action=>"show", :controller=>"admin/comments"}
                        PUT    /admin/posts/:post_id/comments/:id(.:format)      {:action=>"update", :controller=>"admin/comments"}
                        DELETE /admin/posts/:post_id/comments/:id(.:format)      {:action=>"destroy", :controller=>"admin/comments"}
            admin_posts GET    /admin/posts(.:format)                            {:action=>"index", :controller=>"admin/posts"}
                        POST   /admin/posts(.:format)                            {:action=>"create", :controller=>"admin/posts"}
         new_admin_post GET    /admin/posts/new(.:format)                        {:action=>"new", :controller=>"admin/posts"}
        edit_admin_post GET    /admin/posts/:id/edit(.:format)                   {:action=>"edit", :controller=>"admin/posts"}
             admin_post GET    /admin/posts/:id(.:format)                        {:action=>"show", :controller=>"admin/posts"}
                        PUT    /admin/posts/:id(.:format)                        {:action=>"update", :controller=>"admin/posts"}
                        DELETE /admin/posts/:id(.:format)                        {:action=>"destroy", :controller=>"admin/posts"}
          admin_changes GET    /admin/changes(.:format)                          {:action=>"index", :controller=>"admin/changes"}
                        POST   /admin/changes(.:format)                          {:action=>"create", :controller=>"admin/changes"}
       new_admin_change GET    /admin/changes/new(.:format)                      {:action=>"new", :controller=>"admin/changes"}
      edit_admin_change GET    /admin/changes/:id/edit(.:format)                 {:action=>"edit", :controller=>"admin/changes"}
           admin_change PUT    /admin/changes/:id(.:format)                      {:action=>"update", :controller=>"admin/changes"}
                        DELETE /admin/changes/:id(.:format)                      {:action=>"destroy", :controller=>"admin/changes"}
       admin_categories GET    /admin/categories(.:format)                       {:action=>"index", :controller=>"admin/categories"}
                        POST   /admin/categories(.:format)                       {:action=>"create", :controller=>"admin/categories"}
     new_admin_category GET    /admin/categories/new(.:format)                   {:action=>"new", :controller=>"admin/categories"}
    edit_admin_category GET    /admin/categories/:id/edit(.:format)              {:action=>"edit", :controller=>"admin/categories"}
         admin_category PUT    /admin/categories/:id(.:format)                   {:action=>"update", :controller=>"admin/categories"}
                        DELETE /admin/categories/:id(.:format)                   {:action=>"destroy", :controller=>"admin/categories"}
           admin_assets GET    /admin/assets(.:format)                           {:action=>"index", :controller=>"admin/assets"}
                        POST   /admin/assets(.:format)                           {:action=>"create", :controller=>"admin/assets"}
        new_admin_asset GET    /admin/assets/new(.:format)                       {:action=>"new", :controller=>"admin/assets"}
       edit_admin_asset GET    /admin/assets/:id/edit(.:format)                  {:action=>"edit", :controller=>"admin/assets"}
            admin_asset GET    /admin/assets/:id(.:format)                       {:action=>"show", :controller=>"admin/assets"}
                        PUT    /admin/assets/:id(.:format)                       {:action=>"update", :controller=>"admin/assets"}
                        DELETE /admin/assets/:id(.:format)                       {:action=>"destroy", :controller=>"admin/assets"}
            admin_users GET    /admin/users(.:format)                            {:action=>"index", :controller=>"admin/users"}
                        POST   /admin/users(.:format)                            {:action=>"create", :controller=>"admin/users"}
         new_admin_user GET    /admin/users/new(.:format)                        {:action=>"new", :controller=>"admin/users"}
        edit_admin_user GET    /admin/users/:id/edit(.:format)                   {:action=>"edit", :controller=>"admin/users"}
             admin_user GET    /admin/users/:id(.:format)                        {:action=>"show", :controller=>"admin/users"}
                        PUT    /admin/users/:id(.:format)                        {:action=>"update", :controller=>"admin/users"}
                        DELETE /admin/users/:id(.:format)                        {:action=>"destroy", :controller=>"admin/users"}
        admin_inquiries GET    /admin/inquiries(.:format)                        {:action=>"index", :controller=>"admin/inquiries"}
     edit_admin_inquiry GET    /admin/inquiries/:id/edit(.:format)               {:action=>"edit", :controller=>"admin/inquiries"}
          admin_inquiry GET    /admin/inquiries/:id(.:format)                    {:action=>"show", :controller=>"admin/inquiries"}
                        PUT    /admin/inquiries/:id(.:format)                    {:action=>"update", :controller=>"admin/inquiries"}
                        DELETE /admin/inquiries/:id(.:format)                    {:action=>"destroy", :controller=>"admin/inquiries"}
              inquiries POST   /contact(.:format)                                {:action=>"create", :controller=>"inquiries"}
            new_inquiry GET    /contact/new(.:format)                            {:action=>"new", :controller=>"inquiries"}
          post_comments GET    /posts/:post_id/comments(.:format)                {:action=>"index", :controller=>"comments"}
                        POST   /posts/:post_id/comments(.:format)                {:action=>"create", :controller=>"comments"}
       new_post_comment GET    /posts/:post_id/comments/new(.:format)            {:action=>"new", :controller=>"comments"}
      edit_post_comment GET    /posts/:post_id/comments/:id/edit(.:format)       {:action=>"edit", :controller=>"comments"}
           post_comment GET    /posts/:post_id/comments/:id(.:format)            {:action=>"show", :controller=>"comments"}
                        PUT    /posts/:post_id/comments/:id(.:format)            {:action=>"update", :controller=>"comments"}
                        DELETE /posts/:post_id/comments/:id(.:format)            {:action=>"destroy", :controller=>"comments"}
                  posts GET    /posts(.:format)                                  {:action=>"index", :controller=>"posts"}
                        POST   /posts(.:format)                                  {:action=>"create", :controller=>"posts"}
               new_post GET    /posts/new(.:format)                              {:action=>"new", :controller=>"posts"}
              edit_post GET    /posts/:id/edit(.:format)                         {:action=>"edit", :controller=>"posts"}
                   post GET    /posts/:id(.:format)                              {:action=>"show", :controller=>"posts"}
                        PUT    /posts/:id(.:format)                              {:action=>"update", :controller=>"posts"}
                        DELETE /posts/:id(.:format)                              {:action=>"destroy", :controller=>"posts"}
                   home        /home(.:format)                                   {:action=>"index", :controller=>"pages"}
                 prices        /prices(.:format)                                 {:action=>"prices", :controller=>"pages"}
                   tour        /tour(.:format)                                   {:action=>"tour", :controller=>"pages"}
            pages_index GET    /pages/index(.:format)                            {:action=>"index", :controller=>"pages"}
