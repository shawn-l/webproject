#encoding: utf-8
require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "user_created" do
    mail = Notifier.user_created
    assert_equal "用户等待验证", mail.subject
    assert_equal ["shawn413472212@gmail.com"], mail.to
    assert_equal ["admin@webproject.com"], mail.from
    assert_match "有用户等待验证", mail.body.encoded
  end

end
