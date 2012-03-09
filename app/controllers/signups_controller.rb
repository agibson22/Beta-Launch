class SignupsController < ApplicationController
  
  http_basic_authenticate_with :name => "alex", :password => "awesomeflag", :only => [:index]
  
  def index
    @signups = Signup.paginate(:page => params[:page], :per_page => 10)
    @signups_number_of_referrals
  end
  
  def show_referrer
    
  end

  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(params[:signup])
    if @signup.save
      render :thanks
    else
      render :new, :notice => "We Need a Valid Email Address, Heezy"
    end
  end
  
  def thanks
    
  end
  
  def show
    
  end

end