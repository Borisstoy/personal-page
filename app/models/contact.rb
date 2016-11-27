class Contact < MailForm::Base
	attributes :name,  		:validate => true
	attributes :email, 		:validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attributes :message, 	:validate => true
	attributes :nickname, :captcha => true

	# Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.

	def headers
    {
      :subject => "Contact Form",
      :to => "boris.stoy@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end