class SignupsController < ApplicationController
  
  http_basic_authenticate_with :name => "alex", :password => "awesomeflag", :only => [:index]
  
  def index
    @signups = Signup.paginate(:page => params[:page], :per_page => 10)
  end

  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(params[:signup])
    if @signup.save
      redirect_to @signup, :notice => "Thanks for Signing Up!"
    else
      flash.now[:notice] = "Please Enter a Valid Email Address"
      render :action => "new"
    end
  end
  
  def show
    @signup = Signup.find(params[:id])
    @your_domain = "http://" + request.host_with_port
    @referral_code_identifier = "/?p="
    @twitter_domain_text = "http://twitter.com/home/?status="
    @twitter_message_text = "I just signed up for @AgileZen - you should, too! "
  end

end