class ShoutsController < ApplicationController
  def create
  	shout = current_user.shouts.build(shouts_params)
  	if shout.save
  	  redirect_to dashboard_path
  	else
  		flash.alert = "Nisam mogao da kriknem!"
  		redirect_to dashboard_path
  	end
  end
  
  def show
    @shout = Shout.find(params[:id])
  end

  private

  def shouts_params
  	params.require(:shout).permit(:body)
  end
end