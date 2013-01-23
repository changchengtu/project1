class Sendmail < ActionMailer::Base
  default from: "dashanba.test@gmail.com"

    def confirm(emailadd,context)
        mail(:to => emailadd, :subject => "someone has a question", :body=>context)
  end
end
