class CommentsMailbox < ApplicationMailbox
  def process
    return if user.nil?
    return if parent.nil?

    user.comments.create!(
      content: mail.decoded,
      parent: parent,
      post: parent.post
    )
  end

  def parent
    to = mail.to.find { |m| m.match(/comment-\d+/) }
    comment_id = to.match(/comment-(?<comment_id>\d+)/i)[:comment_id]
    @comment ||= Comment.find(comment_id)
  end

  def user
    @user ||= User.find_by(email: mail.from)
  end
end
