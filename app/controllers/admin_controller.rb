class AdminController < ApplicationController
before_filter :authenticate_user!, :except=>[:home]
  def index
  end
end
