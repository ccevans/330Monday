class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true
  attribute :status 

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "330 Monday Contacts",
      :to => "ccevans1@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end

  STATUS = %w[$1k-5k $5k-10k $10k-20k $20k-50k]

end