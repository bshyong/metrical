class PagesController < ApplicationController
  def index
    annotations = MIXPANEL_CLIENT.request(
      '/retention',
      from_date: '2013-12-1',
      to_date: '2015-6-1'
    )

    render json: annotations
  end
end
