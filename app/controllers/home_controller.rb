class HomeController < ApplicationController
  def index
		@summonses = Summons.all
		@schedules = Schedule.all
 	end
end
