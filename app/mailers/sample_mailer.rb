class SampleMailer < ApplicationMailer  attr_accessor :email,:title,:name
    def sample_mail(email,title,name)
        @email = email              
        @title = title    
        @name  = name  
        mail  to: @email,
            subject: "【テストメール】#{@title}"
    end
end
