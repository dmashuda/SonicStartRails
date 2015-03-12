class ChargesController < ApplicationController
  before_filter :authenticate_user!

  def new
  end

  def create
    # Amount in cents
    @amount = 15000

    customer = Stripe::Customer.create(
        :email => current_user.email,
        :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => '1 Year Sonic Start',
        :currency    => 'usd'
    )
    @business = current_user.business

    if !@business.serviceValidTil
      @business.serviceValidTil = Date.today
    end


    if @business.serviceValidTil < (Date.today)
      @business.serviceValidTil  = Date.today.advance(:years => +1);
    else
      @business.serviceValidTil =  @business.serviceValidTil.advance(:years => +1);
    end
    @business.save
    respond_to do |format|
      format.html { redirect_to businesses_url, notice: "$#{charge.amount/100} was successfully charged for 1 year of service"}
      format.json { head :no_content }
    end
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to businesses_url
  end


end
