class WebViewerController < ApplicationController

  def index
    hostname = request.host

    @business = Business.find_by_domain(hostname)
    if @business == nil
      if signed_in?
        redirect_to "/businesses"
      else
        redirect_to "/signin"
      end

      return
    end
    @locations = @business.locations
    @service_lists = @business.service_lists.order(rank: :desc)

    if @business.template
      render :template => @business.template, :layout => false
    else
      render :layout => false
    end

  end
end
