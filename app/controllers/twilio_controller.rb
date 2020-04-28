require 'twilio-ruby'

class TwilioController < ApplicationController
    
    # rescue_from StandardError do |exception|
    #     trigger_sms_alerts(exception)
    # end
    
    # def trigger_sms_alerts(e)
    #     @alert_message = "
    #     It appears the server is having issues.
    #     Exception: #{e}.
    #     Go to: http://newrelic.com for more details."
    #     @image_url = "http://howtodocs.s3.amazonaws.com/new-relic-monitor.png"
    # end

    # @admin_list = YAML.load_file('config/test.yml')
    # @admin_list.each do |admin|

    #     begin
    #         phone_number = admin['phone_number']
    #         send_message(phone_number, @alert_message, @image_url)
    #         flash[:success] = "Exception: #{e}. Administrators will be notified."
    #     rescue
    #         flash[:alert] = "Something went wrong."
    #     end
    # end

    def send_message
        @twilio_number = ENV['TWILIO_NUMBER']
        @client = Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']
        to = '+14155708692'

        message = @client.messages.create(
            :from => @twilio_number,
            :to => to,
            :body => "hi there"
            # :media_url => image_url
        )
        puts message.to
    end

end
