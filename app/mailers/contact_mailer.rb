class ContactMailer < ActionMailer::Base
    default to: 'richardsmichael94@gmail.com'
    
    def contacT_email(name, email, body)
      @name = name
      @email = email
      @body = body
      
      mail(from: email, subject: 'Contact Form Message')
    end 
end
