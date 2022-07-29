class UsersController < ApplicationController
	def index
		@test_array = ["Ruby","PHP","JavaScript"]
		@fronts = ["React","Vue","Angular","jQuery"]
	end
	def new
		@user = User.new
	end
end
