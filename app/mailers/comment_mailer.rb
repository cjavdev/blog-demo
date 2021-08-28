class CommentMailer < ApplicationMailer
  def new_comment(user, comment)
    @comment = comment
    mail(
      to: user.email,
      from: "comment-#{@comment.id}@reply.example.com", # comment-12@replly.example.com
      subject: "New comment on your post",
    )
  end
end
