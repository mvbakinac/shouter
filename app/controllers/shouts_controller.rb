class ShoutsController < ApplicationController
  def create
  	shout = current_user.shouts.build(shouts_params)
  	shout.save
  	redirect_to dashboard_path
  end


  private

  def shouts_params
  	params.require(:shout).permit(:body)
  end
end