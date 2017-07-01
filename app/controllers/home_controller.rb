class HomeController < ApplicationController
	before_action :authenticate_user!

  def index
  	Singup.enquiry(current_user.email).deliver_now
  	Singup.another(current_user.email, current_user.email).deliver_now

  end
end
