module ApplicationHelper
def email_setting(sendemail,subject,body)
		# email= EmailManagement.find_by_is_active(1)
		# emailcount= EmailManagement.where(:is_active=>1).count
		# if emailcount<1
		# 	ActionMailer::Base.smtp_settings = {
		# 		:enable_starttls_auto => true,
		# 		:address => "smtp.gmail.com",
		# 		:port => 587,
		# 		:domain => "gmail.com",
		# 		:authentication => 'plain',
		# 		:user_name => 'auctionsoftwares@gmail.com',
		# 		:password => 'auction!@#'
		# 	}


		# 	ActionMailer::Base.delay.mail(:content_type => 'text/html',from: MAILER_FROM,to: sendemail, subject: subject, body: body)

		# else

		# emailtype=email.options
		# emailuser=email.api_user
		# emailpass=email.api_key
		# if emailtype == 'local mail'
			ActionMailer::Base.smtp_settings = {
				:enable_starttls_auto => true,
				:address => "smtp.gmail.com",
				:port => 587,
				:domain => "gmail.com",
				:authentication => 'plain',
				:user_name => SENDER_EMAIL,
				:password => EMAIL_PWD
			}


			ActionMailer::Base.delay.mail(:content_type => 'text/html',from: MAILER_FROM,to: sendemail, subject: subject, body: body)

# 		elsif emailtype == 'send grid'

# 			client = SendGrid::Client.new(api_user: emailuser, api_key: emailpass)

# 			sendsengridemail = SendGrid::Mail.new do |m|
# 				m.to      = sendemail
# 				m.from    = MAILER_FROM
# 				m.subject = subject
# 				m.html    = body
# 			end

# 			client.send(sendsengridemail)
# 		elsif emailtype=='Customer.io'
# 			$customerio = Customerio::Client.new(emailuser, emailpass)
# 			# $customerio.identify(
# 			# 	id: user.id,
# 			# 	email: user.email,
# 			# 	first_name: user.first_name,

# 			# 	)
# 			$customerio.track(5, "reverse", :subject => subject, :body => body,:email =>sendemail)
# 		end
# end
	end

end
