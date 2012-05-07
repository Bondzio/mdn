class CoachMailer < ActionMailer::Base
  default :from => "info@mensdiscipleshipnetwork.com"
  
  def confirm_request_email(request)
    @request = request
    mail(:to=> @request.email, :cc=> "info@mensdiscipleshipnetwork.com", :subject=>"Thank You for Requesting a Coach")
  end

  def submit_request_email(request)
    @request = request
    mail(:to=> @request.email, :subject=>"Thank You for Requesting a Coach")
  end

end
