class NoticeMailer < ApplicationMailer

  def sendmail_blog(blog)
    @blog = blog

    mail to: "kayama0204@gmail.com",
         subject: '【Achieve】ブログが投稿されました'
  end

  def sendmail_contact(contact)
    @contact = contact

    mail to: @contact.email,
         subject: '【Achieve】問い合わせありがとうございます。'
  end
        
end
