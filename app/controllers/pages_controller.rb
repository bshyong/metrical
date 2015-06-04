class PagesController < ApplicationController
  def index

    options = {
      retention_type: 'compounded',
      from_date: '2015-6-1',
      to_date: Time.now.strftime('%Y-%-m-%-d'),
      event: 'Viewed page',
      on: 'properties["signedIn"] == true'
    }

    daily_engagement = MIXPANEL_CLIENT.request(
      '/retention',
      options.merge(unit: 'day')
    )

    weekly_engagement = MIXPANEL_CLIENT.request(
      '/retention',
      options.merge(unit: 'week')
    )

    monthly_engagement = MIXPANEL_CLIENT.request(
      '/retention',
      options.merge(unit: 'month')
    )

    render json: daily_engagement
  end
end
