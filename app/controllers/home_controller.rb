class HomeController < ApplicationController
before_filter :authenticate_user!, :except=>[:home]
  def index
		@summonses = Summons.all
		@summonses = Summons.all.where(classroom: current_user.classroom)
		@schedules = Schedule.all.order(:deadline_date) #order()で表示するときソートしてる
		@schedules = Schedule.all.where(classroom: current_user.classroom)
 	end
end
