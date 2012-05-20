#encoding: utf-8
class Notifier < ActionMailer::Base
  default from: "admin@webproject.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.user_created.subject
  #
  def user_created
    mail to: "shawn413472212@gmail.com", :subject => '用户等待验证'
  end
end
