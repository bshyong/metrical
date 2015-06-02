require 'mixpanel_client'

MIXPANEL_CLIENT = Mixpanel::Client.new(
  api_key:    ENV['MIXPANEL_API_KEY'],
  api_secret: ENV['MIXPANEL_API_SECRET']
)
