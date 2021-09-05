class ApplicationMailbox < ActionMailbox::Base
  routing /comment-\d+/i => :comments
end
