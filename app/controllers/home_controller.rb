class HomeController < ApplicationController
  def index
		@summonses = Summons.all
		@schedules = Schedule.all.order(:deadline_date) #order()で表示するときソートしてる
 	end
end
