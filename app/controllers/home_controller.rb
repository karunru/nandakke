class HomeController < ApplicationController
  def index
		@summonses = Summons.all
		@schedules = Schedule.all.order(:deadline_date)
 	end
end
