class TextShoutsController < ApplicationController

def create
	content = build_content
  	shout = current_user.shouts.build(content: content)
  	if shout.save
  	  redirect_to dashboard_path
  	else
  		flash.alert = "Nisam mogao da kriknem!"
  		redirect_to dashboard_path
  	end
 end

 private

 def build_content
   TextShout.new(text_shouts_params)
 end

  def text_shouts_params
  	params.require(:text_shout).permit(:body)
  end

end