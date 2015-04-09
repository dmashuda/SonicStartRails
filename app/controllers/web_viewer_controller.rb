class WebViewerController < ApplicationController

  def index
    hostname = request.host

    @business = Business.find_by_domain(hostname) or raise ActionController::RoutingError.new('Not Found')
    @locations = @business.locations
    @service_lists = @business.service_lists

    render :layout => false
  end
end
