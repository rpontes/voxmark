module Admin::CommentsHelper

  def toggle_read(comment)
    params = { :comment => { :read => !comment.read } }
    text   = comment.read? ? "Mark as unread" : "Mark as read"

    link_to text,
      admin_post_comment_path(comment.post, comment, params),
      :method => "put"
  end

end