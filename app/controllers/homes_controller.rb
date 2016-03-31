class HomesController < ApplicationController
	before_filter :check_logedd_in_users
	def show

	end


	private 

	def check_logedd_in_users
		if signed_in?
			redirect_to dashboard_path
		end
	end
end